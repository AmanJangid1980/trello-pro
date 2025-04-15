'use client';

import { useState } from 'react';
import { Draggable } from 'react-beautiful-dnd';
import { Card as CardType } from '../types/types';
import CardModal from './CardModal';
import { format } from 'date-fns';
import { CalendarIcon } from '@heroicons/react/24/outline';

interface CardProps {
  card: CardType;
  index: number;
  onUpdate: (cardId: string, updates: Partial<CardType>) => void;
  onDelete: () => void;
}

const Card = ({ card, index, onUpdate, onDelete }: CardProps) => {
  const [isModalOpen, setIsModalOpen] = useState(false);

  return (
    <>
      <Draggable draggableId={card.id} index={index}>
        {(provided) => (
          <div
            ref={provided.innerRef}
            {...provided.draggableProps}
            {...provided.dragHandleProps}
            onClick={() => setIsModalOpen(true)}
            className="bg-white rounded-md p-3 mb-2 cursor-pointer hover:bg-gray-50 border border-gray-200 shadow-sm transition-all duration-200"
          >
            <h4 className="font-medium text-gray-800">{card.title}</h4>
            {card.description && (
              <p className="text-sm text-gray-600 mt-2 line-clamp-2">{card.description}</p>
            )}
            {card.dueDate && (
              <div className="mt-3 text-xs text-gray-500 flex items-center">
                <CalendarIcon className="h-3.5 w-3.5 mr-1 text-gray-400" />
                Due: {format(new Date(card.dueDate), 'MMM d, yyyy')}
              </div>
            )}
          </div>
        )}
      </Draggable>

      {isModalOpen && (
        <CardModal
          card={card}
          onClose={() => setIsModalOpen(false)}
          onUpdate={onUpdate}
          onDelete={onDelete}
        />
      )}
    </>
  );
};

export default Card; 