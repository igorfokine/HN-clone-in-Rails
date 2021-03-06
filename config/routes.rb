# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'

  get    '/users/:id',           to: 'users#show'
  get    '/login',               to: 'users#login'
  post   '/signup',	             to: 'users#create'
  post   '/login',     	         to: 'sessions#create'
  delete '/logout',              to: 'sessions#destroy'
  get    '/submit',              to: 'posts#new'
  post   '/submit',              to: 'posts#create'
  get    '/posts',               to: 'posts#index'
  get    '/posts/:id',           to: 'posts#show'
  post   '/posts/:id/upvote',    to: 'posts#upvote'
  get    '/comments',            to: 'comments#index'
  get    '/comments/:id',        to: 'comments#show'
  post   '/comments/new',        to: 'comments#create'
  post   '/comments/:id/upvote', to: 'comments#upvote'
end
