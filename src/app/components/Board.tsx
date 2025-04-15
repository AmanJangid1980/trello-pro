'use client';

import { useState, useEffect } from 'react';
import { DragDropContext, Droppable, DropResult } from 'react-beautiful-dnd';
import { v4 as uuidv4 } from 'uuid';
import List from './List';
import Header from './Header';
import Footer from './Footer';
import { Board as BoardType, List as ListType, Card as CardType } from '../types/types';
import { saveBoardToStorage, loadBoardFromStorage, clearBoardStorage } from '../utils/localStorage';
import { PlusIcon } from '@heroicons/react/24/outline';

const Board = () => {
  const [board, setBoard] = useState<BoardType>({ 
    id: '1',
    title: 'My Board',
    lists: [] 
  });
  const [isAddingList, setIsAddingList] = useState(false);
  const [newListTitle, setNewListTitle] = useState('');

  useEffect(() => {
    const savedBoard = loadBoardFromStorage();
    if (savedBoard) {
      setBoard(savedBoard);
    }
  }, []);

  useEffect(() => {
    saveBoardToStorage(board);
  }, [board]);

  const handleDragEnd = (result: DropResult) => {
    const { destination, source, type } = result;

    if (!destination) return;

    // If dropped in the same position
    if (
      destination.droppableId === source.droppableId &&
      destination.index === source.index
    ) {
      return;
    }

    // Handle list reordering
    if (type === 'list') {
      const newLists = Array.from(board.lists);
      const [removed] = newLists.splice(source.index, 1);
      newLists.splice(destination.index, 0, removed);
      setBoard({ ...board, lists: newLists });
      return;
    }

    // Handle card reordering
    const sourceList = board.lists.find(
      (list: ListType) => list.id === source.droppableId
    );
    const destList = board.lists.find(
      (list: ListType) => list.id === destination.droppableId
    );

    if (!sourceList || !destList) return;

    // Create new array of lists
    const newLists = board.lists.map((list: ListType) => {
      if (list.id === sourceList.id) {
        const newCards = Array.from(list.cards);
        const [removed] = newCards.splice(source.index, 1);
        
        if (list.id === destList.id) {
          newCards.splice(destination.index, 0, removed);
        }
        
        return { ...list, cards: newCards };
      }
      
      if (list.id === destList.id && sourceList.id !== destList.id) {
        const newCards = Array.from(list.cards);
        const [removed] = sourceList.cards.splice(source.index, 1);
        newCards.splice(destination.index, 0, removed);
        return { ...list, cards: newCards };
      }
      
      return list;
    });

    setBoard({ ...board, lists: newLists });
  };

  const addList = (title: string) => {
    if (!title.trim()) return;
    
    const newList: ListType = {
      id: uuidv4(),
      title: title.trim(),
      cards: [],
    };
    setBoard({ ...board, lists: [...board.lists, newList] });
    setIsAddingList(false);
    setNewListTitle('');
  };

  const deleteList = (listId: string) => {
    setBoard({
      ...board,
      lists: board.lists.filter((list: ListType) => list.id !== listId),
    });
  };

  const addCard = (listId: string, title: string) => {
    if (!title.trim()) return;
    
    const newCard: CardType = {
      id: uuidv4(),
      title: title.trim(),
      listId,
    };
    
    setBoard({
      ...board,
      lists: board.lists.map((list: ListType) => {
        if (list.id === listId) {
          return {
            ...list,
            cards: [...list.cards, newCard],
          };
        }
        return list;
      }),
    });
  };

  const updateCard = (cardId: string, updates: Partial<CardType>) => {
    setBoard({
      ...board,
      lists: board.lists.map((list: ListType) => {
        return {
          ...list,
          cards: list.cards.map((card: CardType) => {
            if (card.id === cardId) {
              return { ...card, ...updates };
            }
            return card;
          }),
        };
      }),
    });
  };

  const deleteCard = (cardId: string, listId: string) => {
    setBoard({
      ...board,
      lists: board.lists.map((list: ListType) => {
        if (list.id === listId) {
          return {
            ...list,
            cards: list.cards.filter((card: CardType) => card.id !== cardId),
          };
        }
        return list;
      }),
    });
  };

  const resetBoard = () => {
    clearBoardStorage();
    setBoard({ 
      id: '1',
      title: 'My Board',
      lists: [] 
    });
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-indigo-200 via-purple-200 to-pink-200 flex flex-col">
      <Header onReset={resetBoard} />
      <main className="flex-grow p-6 overflow-hidden">
        <div className="flex items-center justify-between mb-6">
          <h1 className="text-3xl font-bold text-indigo-900">{board.title}</h1>
          <button
            onClick={() => setIsAddingList(true)}
            className="btn-primary bg-gradient-to-r from-indigo-600 to-purple-600 hover:from-indigo-700 hover:to-purple-700 text-white flex items-center gap-2"
          >
            <PlusIcon className="h-5 w-5" />
            Add List
          </button>
        </div>
        <DragDropContext onDragEnd={handleDragEnd}>
          <Droppable droppableId="board" type="list" direction="horizontal">
            {(provided) => (
              <div
                ref={provided.innerRef}
                {...provided.droppableProps}
                className="flex overflow-x-auto p-4 gap-6 min-h-[calc(100vh-180px)]"
              >
                {board.lists.map((list: ListType, index: number) => (
                  <List
                    key={list.id}
                    list={list}
                    index={index}
                    onDelete={deleteList}
                    onAddCard={addCard}
                    onUpdateCard={updateCard}
                    onDeleteCard={deleteCard}
                  />
                ))}
                {provided.placeholder}
                
                {isAddingList ? (
                  <div className="bg-indigo-600 rounded-lg shadow-md border border-indigo-500 p-4 w-72">
                    <input
                      type="text"
                      value={newListTitle}
                      onChange={(e) => setNewListTitle(e.target.value)}
                      placeholder="Enter list title..."
                      className="input w-full mb-3 focus:ring-2 focus:ring-indigo-300 bg-indigo-700 text-white"
                      autoFocus
                    />
                    <div className="flex space-x-2">
                      <button
                        onClick={() => {
                          addList(newListTitle);
                        }}
                        className="btn-primary flex-1 bg-indigo-500 hover:bg-indigo-400 text-white"
                      >
                        Add List
                      </button>
                      <button
                        onClick={() => {
                          setIsAddingList(false);
                          setNewListTitle('');
                        }}
                        className="btn-secondary flex-1 bg-indigo-700 hover:bg-indigo-600 text-white"
                      >
                        Cancel
                      </button>
                    </div>
                  </div>
                ) : null}
              </div>
            )}
          </Droppable>
        </DragDropContext>
      </main>
      <Footer />
    </div>
  );
};

export default Board; 