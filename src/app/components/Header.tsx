'use client';

import { ArrowPathIcon, BellIcon, UserCircleIcon, Cog6ToothIcon } from '@heroicons/react/24/outline';

interface HeaderProps {
  onReset: () => void;
}

const Header = ({ onReset }: HeaderProps) => {
  return (
    <header className="bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-500 shadow-lg">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
        <div className="flex justify-between items-center mb-4">
          <div className="flex items-center space-x-3">
            <div className="w-12 h-12 bg-white/10 backdrop-blur-sm rounded-xl flex items-center justify-center border border-white/20">
              <span className="text-white font-bold text-2xl">T</span>
            </div>
            <div>
              <h1 className="text-2xl font-bold text-white">TrelloPro</h1>
              <span className="text-sm text-white/80">Task Management</span>
            </div>
          </div>
          <div className="flex items-center space-x-4">
            <button className="p-2.5 text-white/90 hover:text-white hover:bg-white/10 rounded-lg transition-all duration-200">
              <BellIcon className="h-6 w-6" />
            </button>
            <button className="p-2.5 text-white/90 hover:text-white hover:bg-white/10 rounded-lg transition-all duration-200">
              <Cog6ToothIcon className="h-6 w-6" />
            </button>
            <button className="p-2.5 text-white/90 hover:text-white hover:bg-white/10 rounded-lg transition-all duration-200">
              <UserCircleIcon className="h-6 w-6" />
            </button>
          </div>
        </div>
        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-4">
            <button className="px-4 py-2 text-sm font-medium text-white hover:text-white hover:bg-white/10 rounded-lg transition-all duration-200">
              My Boards
            </button>
            <button className="px-4 py-2 text-sm font-medium text-white hover:text-white hover:bg-white/10 rounded-lg transition-all duration-200">
              Recent
            </button>
            <button className="px-4 py-2 text-sm font-medium text-white hover:text-white hover:bg-white/10 rounded-lg transition-all duration-200">
              Templates
            </button>
          </div>
          <button
            onClick={onReset}
            className="flex items-center px-4 py-2 bg-white/10 text-white rounded-lg hover:bg-white/20 transition-all duration-200 border border-white/20"
          >
            <ArrowPathIcon className="h-5 w-5 mr-2" />
            Reset Board
          </button>
        </div>
      </div>
    </header>
  );
};

export default Header; 