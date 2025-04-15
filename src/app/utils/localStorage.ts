import { Board } from '../types/types';

const STORAGE_KEY = 'trello-board';

export const saveBoardToStorage = (board: Board) => {
  try {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(board));
  } catch (error) {
    console.error('Error saving board to localStorage:', error);
  }
};

export const loadBoardFromStorage = (): Board | null => {
  try {
    const savedBoard = localStorage.getItem(STORAGE_KEY);
    return savedBoard ? JSON.parse(savedBoard) : null;
  } catch (error) {
    console.error('Error loading board from localStorage:', error);
    return null;
  }
};

export const clearBoardStorage = () => {
  try {
    localStorage.removeItem(STORAGE_KEY);
  } catch (error) {
    console.error('Error clearing board from localStorage:', error);
  }
}; 