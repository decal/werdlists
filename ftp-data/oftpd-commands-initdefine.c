/* argument types */
#define ARG_NONE              0
#define ARG_STRING            1
#define ARG_OPTIONAL_STRING   2
#define ARG_HOST_PORT         3
#define ARG_TYPE              4
#define ARG_STRUCTURE         5
#define ARG_MODE              6
#define ARG_OFFSET            7
#define ARG_HOST_PORT_LONG    8
#define ARG_HOST_PORT_EXT     9
#define ARG_OPTIONAL_NUMBER  10

/* our FTP commands */
struct {
    char *name;
    int arg_type;
} command_def[] = {
    { "USER", ARG_STRING          },
    { "PASS", ARG_STRING          },
    { "CWD",  ARG_STRING          },
    { "CDUP", ARG_NONE            },
    { "QUIT", ARG_NONE            },
    { "PORT", ARG_HOST_PORT       },
    { "LPRT", ARG_HOST_PORT_LONG  },
    { "EPRT", ARG_HOST_PORT_EXT   },
    { "PASV", ARG_NONE            },
    { "LPSV", ARG_NONE            },
    { "EPSV", ARG_OPTIONAL_NUMBER },
    { "TYPE", ARG_TYPE            },
    { "STRU", ARG_STRUCTURE       },
    { "MODE", ARG_MODE            },
    { "RETR", ARG_STRING          },
    { "STOR", ARG_STRING          },
    { "PWD",  ARG_NONE            },
    { "LIST", ARG_OPTIONAL_STRING },
    { "NLST", ARG_OPTIONAL_STRING },
    { "SYST", ARG_NONE            },
    { "HELP", ARG_OPTIONAL_STRING },
    { "NOOP", ARG_NONE            },
    { "REST", ARG_OFFSET          },
    { "SIZE", ARG_STRING          },
    { "MDTM", ARG_STRING          }
};
