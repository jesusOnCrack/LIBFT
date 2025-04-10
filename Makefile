NAME = libft.a
CFLAGS = -Wall -Wextra -Werror
SRCS = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memcpy.c ft_memset.c ft_strlen.c ft_toupper.c ft_tolower.c ft_memmove.c ft_strnstr.c ft_strchr.c ft_strrchr.c ft_strlcat.c
OBJS = ${SRCS:.c=.o}

all: ${NAME}

re: fclean all

$(NAME): ${OBJS}
		@echo "creating ${NAME}"
		ar rc ${NAME} ${OBJS}

$(OBJS): ${SRCS}
		@echo "creating object files"
		cc ${CFLAGS} -c ${SRCS}

fclean: clean
		@echo "removing ${OBJS} ${NAME}"
		rm ${NAME}

clean: 
		@echo "removing ${OBJS}"
		rm ${OBJS}
