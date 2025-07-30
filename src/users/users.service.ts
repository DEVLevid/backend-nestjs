import { Injectable } from '@nestjs/common';
import { User } from './entities/user.entity';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';

@Injectable()
export class UsersService {
  private users:User[] = [];

  create(createUserDto: CreateUserDto){
    const user: User = {
      id: Date.now(),
      ...createUserDto
    };
    this.users.push(user);
    return user;
  }

  findAll(){
    return this.users;
  }

  findOne(id: number){
    return this.users.find(u => u.id === id);
  }

  update(id: number, updateUserDto: UpdateUserDto){
    const index = this.users.findIndex(u => u.id === id);
    if(index >= 0){
      this.users[index] = { ...this.users[index], ...updateUserDto };
      return this.users[index];
    }
    return null;
  }

  remove(id: number){
    this.users = this.users.filter(u => u.id !== id);
    return true;
  }
}
