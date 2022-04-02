.class public Lcom/yandex/metrica/impl/ob/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bv;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Lcom/yandex/metrica/impl/ob/bo;

.field private e:Ljava/nio/channels/FileLock;

.field private f:Ljava/io/RandomAccessFile;

.field private g:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bw;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    monitor-enter p0

    .line 37
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/bw;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bw;->c:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bw;->c:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bw;->f:Ljava/io/RandomAccessFile;

    .line 39
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bw;->g:Ljava/nio/channels/FileChannel;

    .line 40
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bw;->e:Ljava/nio/channels/FileLock;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/bo;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bw;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bw;->b:Ljava/lang/String;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/bm;->c()Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bs;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bw;->d:Lcom/yandex/metrica/impl/ob/bo;

    .line 43
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_59
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    monitor-exit p0

    return-object v0

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_59
    const/4 v0, 0x0

    .line 47
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_9

    .line 1298
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p1

    goto :goto_2d

    .line 53
    :catch_9
    :cond_9
    :goto_9
    :try_start_9
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 54
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->e:Ljava/nio/channels/FileLock;

    invoke-static {p1}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 55
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->f:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 56
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->g:Ljava/nio/channels/FileChannel;

    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->d:Lcom/yandex/metrica/impl/ob/bo;

    .line 58
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->f:Ljava/io/RandomAccessFile;

    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->e:Ljava/nio/channels/FileLock;

    .line 60
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bw;->g:Ljava/nio/channels/FileChannel;
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_7

    .line 61
    monitor-exit p0

    return-void

    :goto_2d
    monitor-exit p0

    throw p1
.end method
