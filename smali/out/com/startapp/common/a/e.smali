.class public Lcom/startapp/common/a/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0, p1, p2}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p3, "Failed to read from disk: "

    const-string v0, "FileUtils"

    const/4 v1, 0x0

    if-nez p2, :cond_e

    const/4 p0, 0x3

    const-string p1, "readFromDisk::fileName is null"

    .line 90
    invoke-static {p0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-object v1

    :cond_e
    const/4 v2, 0x6

    .line 96
    :try_start_f
    invoke-static {p0, p1}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0, p2}, Lcom/startapp/common/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_30
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_47

    :catch_18
    move-exception p0

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_47

    :catch_30
    move-exception p0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_47
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    const-string v2, "FileUtils"

    if-eqz p0, :cond_3e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_3e

    .line 257
    :cond_15
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p1, 0x4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    invoke-static {p0}, Lcom/startapp/common/a/e;->b(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    :cond_3d
    return-object v1

    :cond_3e
    :goto_3e
    const/4 p0, 0x3

    const-string p1, "Files directory does not exist or not a directory"

    .line 254
    invoke-static {v2, p0, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_9

    const/4 p0, 0x3

    const-string p1, "deleteDirectory::dirPath == null"

    .line 198
    invoke-static {p0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-void

    .line 202
    :cond_9
    invoke-static {p0, p1}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {v1}, Lcom/startapp/common/a/e;->a(Ljava/io/File;)V

    .line 206
    invoke-static {p0, p1}, Lcom/startapp/common/a/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Lcom/startapp/common/a/e;->a(Ljava/io/File;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0, p1, p2}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "FileUtils"

    if-nez p2, :cond_b

    const-string p0, "writeToDisk: fileName is null"

    .line 52
    invoke-static {v1, v0, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2c

    .line 56
    :cond_b
    :try_start_b
    invoke-static {p0, p1}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-static {p0, p2, p3}, Lcom/startapp/common/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_2c

    :catch_13
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed writing to disk: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 5

    .line 271
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 272
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 273
    invoke-static {v3}, Lcom/startapp/common/a/e;->a(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 277
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static a(Ljava/io/Serializable;Ljava/io/File;)V
    .registers 3

    .line 282
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 283
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 284
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V

    .line 286
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 6

    .line 235
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, "FileUtils"

    if-nez p0, :cond_1a

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x3

    const-string p1, "Unable to create directories"

    .line 240
    invoke-static {v1, p0, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 245
    :cond_1a
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    invoke-static {p2, p0}, Lcom/startapp/common/a/e;->a(Ljava/io/Serializable;Ljava/io/File;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p3, "Failed to read from disk: "

    const-string v0, "FileUtils"

    const/4 v1, 0x0

    if-nez p2, :cond_e

    const/4 p0, 0x3

    const-string p1, "readFromDisk::fileName is null"

    .line 109
    invoke-static {p0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    return-object v1

    :cond_e
    const/4 v2, 0x6

    .line 115
    :try_start_f
    invoke-static {p0, p1}, Lcom/startapp/common/a/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-static {p0, p2}, Lcom/startapp/common/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_30
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_47

    :catch_18
    move-exception p0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_47

    :catch_30
    move-exception p0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_47
    return-object v1
.end method

.method private static b(Ljava/io/File;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 293
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 294
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 295
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    .line 296
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_24
    const-string p0, ""

    :goto_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string p2, "FileUtils"

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    :try_start_7
    invoke-static {p0, p1}, Lcom/startapp/common/a/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p0, :cond_59

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_59

    .line 172
    :cond_1f
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2b

    const-string p0, "Files directory is empty"

    .line 174
    invoke-static {p2, v3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 178
    :cond_2b
    array-length p1, p0

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, p1, :cond_88

    aget-object v3, p0, v2

    .line 179
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v3, v5}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    invoke-static {v4}, Lcom/startapp/common/a/e;->b(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    .line 182
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 168
    :cond_59
    :goto_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Files directory does not exist or not a directory: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v3, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6d} :catch_6e

    return-object v2

    :catch_6e
    move-exception p0

    const/4 p1, 0x6

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read from disk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_88
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 5

    .line 34
    sget-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/common/a/e$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/startapp/common/a/e$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "FileUtils"

    if-nez p2, :cond_b

    const-string p0, "writeToDisk: fileName is null"

    .line 67
    invoke-static {v1, v0, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2c

    .line 71
    :cond_b
    :try_start_b
    invoke-static {p0, p1}, Lcom/startapp/common/a/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0, p2, p3}, Lcom/startapp/common/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_2c

    :catch_13
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed writing to disk: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    :cond_24
    const-string p0, ""

    :goto_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
