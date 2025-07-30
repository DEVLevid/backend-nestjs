import { ApiProperty } from '@nestjs/swagger';

export class CreateUserDto {
  @ApiProperty({ example: 'Maria Oliveira' })
  name: string;

  @ApiProperty({ example: 'maria@email.com' })
  email: string;
}
