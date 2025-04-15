'use client';

const Footer = () => {
  return (
    <footer className="bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-500 text-white mt-auto">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mb-6">
          <div>
            <h3 className="text-white font-semibold text-lg mb-3">TrelloPro</h3>
            <p className="text-white/80 text-sm mb-2">A powerful Trello-like task management application that helps you organize your work and collaborate with your team.</p>
            <p className="text-white/60 text-xs">© {new Date().getFullYear()} TrelloPro. All rights reserved.</p>
          </div>
          <div>
            <h3 className="text-white font-medium text-sm mb-3">Features</h3>
            <ul className="space-y-2 text-white/80 text-sm">
              <li>• Drag and drop task organization</li>
              <li>• Create and manage multiple boards</li>
              <li>• Add due dates and descriptions</li>
              <li>• Real-time updates and changes</li>
              <li>• Responsive design for all devices</li>
            </ul>
          </div>
          <div>
            <h3 className="text-white font-medium text-sm mb-3">Built With</h3>
            <ul className="space-y-2 text-white/80 text-sm">
              <li>• React & Next.js for frontend</li>
              <li>• Tailwind CSS for styling</li>
              <li>• React Beautiful DnD</li>
              <li>• Local storage for data persistence</li>
              <li>• TypeScript for type safety</li>
            </ul>
          </div>
        </div>
        <div className="border-t border-white/20 pt-4 text-center">
          <p className="text-white/60 text-xs">TrelloPro is inspired by Trello. This is a demo application for learning purposes.</p>
        </div>
      </div>
    </footer>
  );
};

export default Footer; 