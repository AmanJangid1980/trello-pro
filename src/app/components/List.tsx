'use client';

import { useState } from 'react';
import { Droppable, Draggable } from 'react-beautiful-dnd';
import { List as ListType, Card as CardType } from '../types/types';
import Card from './Card';
import { PlusIcon, TrashIcon, PencilIcon } from '@heroicons/react/24/outline';

interface ListProps {
  list: ListType;
  index: number;
  onDelete: (listId: string) => void;
  onAddCard: (listId: string, title: string) => void;
  onUpdateCard: (cardId: string, updates: Partial<CardType>) => void;
  onDeleteCard: (cardId: string, listId: string) => void;
}

const List = ({ list, index, onDelete, onAddCard, onUpdateCard, onDeleteCard }: ListProps) => {
  const [isEditing, setIsEditing] = useState(false);
  const [title, setTitle] = useState(list.title);
  const [isAddingCard, setIsAddingCard] = useState(false);
  const [newCardTitle, setNewCardTitle] = useState('');

  const handleTitleSubmit = () => {
    if (title.trim()) {
      onUpdateCard(list.id, { title: title.trim() });
      setIsEditing(false);
    }
  };

  const handleAddCard = () => {
    if (newCardTitle.trim()) {
      onAddCard(list.id, newCardTitle);
      setNewCardTitle('');
      setIsAddingCard(false);
    }
  };

  return (
    <Draggable draggableId={list.id} index={index}>
      {(provided) => (
        <div
          ref={provided.innerRef}
          {...provided.draggableProps}
          className="bg-gradient-to-br from-indigo-500 to-purple-500 rounded-lg shadow-md border border-indigo-400/30 p-4 w-72 flex flex-col max-h-[calc(100vh-180px)]"
        >
          <div className="flex items-center justify-between mb-3">
            <div {...provided.dragHandleProps} className="flex-grow">
              {isEditing ? (
                <input
                  type="text"
                  value={title}
                  onChange={(e) => setTitle(e.target.value)}
                  onBlur={handleTitleSubmit}
                  onKeyDown={(e) => e.key === 'Enter' && handleTitleSubmit()}
                  autoFocus
                  className="input focus:ring-2 focus:ring-indigo-300 bg-white/10 text-white placeholder-white/50"
                />
              ) : (
                <div className="flex items-center">
                  <h3 
                    className="font-semibold text-white cursor-pointer p-1 hover:bg-white/10 rounded transition-colors duration-200"
                    onClick={() => setIsEditing(true)}
                  >
                    {list.title}
                  </h3>
                  <button
                    onClick={() => setIsEditing(true)}
                    className="ml-1 text-white/70 hover:text-white p-1 rounded transition-colors duration-200"
                  >
                    <PencilIcon className="h-4 w-4" />
                  </button>
                </div>
              )}
            </div>
            <button
              onClick={() => onDelete(list.id)}
              className="text-white/70 hover:text-red-300 p-1 rounded transition-colors duration-200"
            >
              <TrashIcon className="h-5 w-5" />
            </button>
          </div>

          <Droppable droppableId={list.id} type="card">
            {(provided) => (
              <div
                ref={provided.innerRef}
                {...provided.droppableProps}
                className="flex-grow overflow-y-auto min-h-[50px] pr-2"
              >
                {list.cards.map((card, index) => (
                  <Card
                    key={card.id}
                    card={card}
                    index={index}
                    onUpdate={onUpdateCard}
                    onDelete={() => onDeleteCard(card.id, list.id)}
                  />
                ))}
                {provided.placeholder}
              </div>
            )}
          </Droppable>

          {isAddingCard ? (
            <div className="mt-3">
              <textarea
                value={newCardTitle}
                onChange={(e) => setNewCardTitle(e.target.value)}
                placeholder="Enter card title..."
                className="input resize-none focus:ring-2 focus:ring-indigo-300 bg-indigo-700 text-white"
                rows={3}
                autoFocus
              />
              <div className="flex mt-2 space-x-2">
                <button
                  onClick={handleAddCard}
                  className="btn-primary flex-1 bg-indigo-500 hover:bg-indigo-400 text-white"
                >
                  Add Card
                </button>
                <button
                  onClick={() => {
                    setIsAddingCard(false);
                    setNewCardTitle('');
                  }}
                  className="btn-secondary flex-1 bg-indigo-700 hover:bg-indigo-600 text-white"
                >
                  Cancel
                </button>
              </div>
            </div>
          ) : (
            <button
              onClick={() => setIsAddingCard(true)}
              className="mt-3 flex items-center text-indigo-200 hover:bg-indigo-700 p-2 rounded transition-colors duration-200"
            >
              <PlusIcon className="h-5 w-5 mr-1 text-indigo-200" />
              Add a card
            </button>
          )}
        </div>
      )}
    </Draggable>
  );
};

export default List; 