.class public final Lcom/google/android/exoplayer2/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;
    }
.end annotation


# instance fields
.field private final backupName:Ljava/io/File;

.field private final baseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    return-void
.end method

.method private restoreBackup()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_14
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public endWrite(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 134
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public exists()Z
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public openRead()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/AtomicFile;->restoreBackup()V

    .line 147
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public startWrite()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t rename file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to backup file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->backupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomicFile"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 101
    :cond_3d
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 106
    :cond_42
    :goto_42
    :try_start_42
    new-instance v0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_49} :catch_4a

    goto :goto_62

    :catch_4a
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "Couldn\'t create "

    if-eqz v1, :cond_7b

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 114
    :try_start_5b
    new-instance v0, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/AtomicFile$AtomicFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_62} :catch_63

    :goto_62
    return-object v0

    :catch_63
    move-exception v0

    .line 116
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :cond_7b
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/AtomicFile;->baseName:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
