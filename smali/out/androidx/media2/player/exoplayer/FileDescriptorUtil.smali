.class final Landroidx/media2/player/exoplayer/FileDescriptorUtil;
.super Ljava/lang/Object;
.source "FileDescriptorUtil.java"


# static fields
.field private static sCloseMethodV14:Ljava/lang/reflect/Method;

.field private static sDupMethodV14:Ljava/lang/reflect/Method;

.field private static sLseekMethodV14:Ljava/lang/reflect/Method;

.field private static final sPosixLockV14:Ljava/lang/Object;

.field private static sPosixObjectV14:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sPosixLockV14:Ljava/lang/Object;

    return-void
.end method

.method private static ensurePosixObjectsInitialized()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    sget-object v0, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sPosixLockV14:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    sget-object v1, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sPosixObjectV14:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 165
    monitor-exit v0

    return-void

    :cond_9
    const-string v1, "libcore.io.Posix"

    .line 167
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const-string v5, "lseek"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    .line 170
    const-class v7, Ljava/io/FileDescriptor;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sLseekMethodV14:Ljava/lang/reflect/Method;

    const-string v5, "dup"

    new-array v6, v4, [Ljava/lang/Class;

    .line 172
    const-class v7, Ljava/io/FileDescriptor;

    aput-object v7, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sDupMethodV14:Ljava/lang/reflect/Method;

    const-string v5, "close"

    new-array v4, v4, [Ljava/lang/Class;

    .line 173
    const-class v6, Ljava/io/FileDescriptor;

    aput-object v6, v4, v2

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sCloseMethodV14:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    .line 174
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sPosixObjectV14:Ljava/lang/Object;

    .line 175
    monitor-exit v0

    return-void

    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public static seek(Ljava/io/FileDescriptor;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 73
    invoke-static {p0, p1, p2}, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->seekV21(Ljava/io/FileDescriptor;J)V

    goto :goto_d

    .line 75
    :cond_a
    invoke-static {p0, p1, p2}, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->seekV14(Ljava/io/FileDescriptor;J)V

    :goto_d
    return-void
.end method

.method private static seekV14(Ljava/io/FileDescriptor;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    :try_start_0
    sget-object v0, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sPosixLockV14:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_26

    .line 127
    :try_start_3
    invoke-static {}, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->ensurePosixObjectsInitialized()V

    .line 128
    sget-object v1, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sPosixObjectV14:Ljava/lang/Object;

    .line 129
    sget-object v2, Landroidx/media2/player/exoplayer/FileDescriptorUtil;->sLseekMethodV14:Ljava/lang/reflect/Method;

    .line 130
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    const/4 v0, 0x3

    :try_start_c
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    const/4 p0, 0x1

    .line 131
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_26

    return-void

    :catchall_23
    move-exception p0

    .line 130
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    .line 133
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to seek the file descriptor"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static seekV21(Ljava/io/FileDescriptor;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, p1, p2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 117
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to seek the file descriptor"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
