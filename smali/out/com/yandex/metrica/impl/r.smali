.class public final Lcom/yandex/metrica/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    const/4 v4, -0x1

    .line 100
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-eq v4, v5, :cond_12

    .line 101
    invoke-virtual {p1, v1, v2, v5}, Ljava/io/Writer;->write([CII)V

    add-int/2addr v3, v5

    goto :goto_6

    :cond_12
    return v3
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 196
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/r;->b(Landroid/content/Context;Ljava/io/File;)[B

    move-result-object p1

    .line 198
    :try_start_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 1022
    invoke-static {p0, p1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p0

    const-string p1, "read_share_file_with_unsupported_encoding"

    .line 202
    invoke-interface {p0, p1, v0}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 70
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 71
    invoke-static {v0, p0}, Lcom/yandex/metrica/impl/r;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 72
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    .line 84
    :try_start_6
    invoke-static {v1}, Lcom/yandex/metrica/impl/r;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 86
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_e
    move-exception p0

    move-object v0, v1

    goto :goto_12

    :catchall_11
    move-exception p0

    :goto_12
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x18

    .line 2295
    :try_start_2
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/lang/String;Ljava/io/FileOutputStream;)V

    .line 253
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/r;->c(Landroid/content/Context;Ljava/io/File;)V

    return-void

    :cond_18
    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/yandex/metrica/impl/r;->a(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .registers 5

    const/4 v0, 0x0

    .line 303
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 307
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 308
    array-length v2, p0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 309
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 311
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p0, 0x1

    .line 312
    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_28

    .line 316
    :catch_21
    invoke-static {v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 317
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_28
    move-exception p0

    .line 316
    invoke-static {v0}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 317
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/nio/channels/FileLock;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 238
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    :try_start_8
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 134
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_37
    .catchall {:try_start_1 .. :try_end_6} :catchall_2e

    .line 135
    :try_start_6
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_2c
    .catchall {:try_start_6 .. :try_end_b} :catchall_2a

    :try_start_b
    const-string v3, "UTF-8"

    .line 136
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 137
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 139
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v3, 0x0

    .line 140
    invoke-static {p0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_39
    .catchall {:try_start_b .. :try_end_20} :catchall_27

    .line 144
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 145
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_27
    move-exception p0

    move-object v0, v2

    goto :goto_30

    :catchall_2a
    move-exception p0

    goto :goto_30

    :catch_2c
    move-object v2, v0

    goto :goto_39

    :catchall_2e
    move-exception p0

    move-object v1, v0

    .line 144
    :goto_30
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 145
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    throw p0

    :catch_37
    move-object v1, v0

    move-object v2, v1

    .line 144
    :catch_39
    :goto_39
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 145
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    :try_start_9
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, p1}, Lcom/yandex/metrica/impl/r;->a(Ljava/lang/String;Ljava/io/FileOutputStream;)V

    .line 269
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/r;->c(Landroid/content/Context;Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/io/File;)[B
    .registers 11

    const/4 v0, 0x0

    .line 214
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_57
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_57
    .catchall {:try_start_1 .. :try_end_8} :catchall_3d

    .line 215
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x1

    move-object v3, v2

    .line 217
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_19} :catch_3b
    .catchall {:try_start_8 .. :try_end_19} :catchall_38

    .line 219
    :try_start_19
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 220
    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 221
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2c} :catch_59
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_2c} :catch_59
    .catchall {:try_start_19 .. :try_end_2c} :catchall_36

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 232
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_36
    move-exception v2

    goto :goto_40

    :catchall_38
    move-exception v2

    move-object v3, v0

    goto :goto_40

    :catch_3b
    move-object v3, v0

    goto :goto_59

    :catchall_3d
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_40
    :try_start_40
    const-string v4, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 2022
    invoke-static {p0, v4}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p0

    const-string v4, "error_during_file_reading"

    .line 229
    invoke-interface {p0, v4, v2}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_4c

    goto :goto_59

    :catchall_4c
    move-exception p0

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 232
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    throw p0

    :catch_57
    move-object v1, v0

    move-object v3, v1

    .line 231
    :catch_59
    :goto_59
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 232
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 176
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    :cond_d
    :goto_d
    :try_start_d
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_1c

    .line 183
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_23

    .line 189
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object p0

    :cond_1c
    if-lez v2, :cond_d

    const/4 v3, 0x0

    .line 185
    :try_start_1f
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_d

    :catchall_23
    move-exception p0

    .line 189
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    goto :goto_29

    :goto_28
    throw p0

    :goto_29
    goto :goto_28
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    :try_start_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 158
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_2f
    .catchall {:try_start_2 .. :try_end_b} :catchall_24

    .line 159
    :try_start_b
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_22
    .catchall {:try_start_b .. :try_end_10} :catchall_1d

    .line 161
    :try_start_10
    invoke-static {p0}, Lcom/yandex/metrica/impl/r;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1b

    .line 165
    :catch_14
    :goto_14
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 166
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1b
    move-exception v1

    goto :goto_28

    :catchall_1d
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_28

    :catch_22
    move-object p0, v1

    goto :goto_14

    :catchall_24
    move-exception p0

    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    .line 165
    :goto_28
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 166
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    throw v1

    :catch_2f
    move-object p0, v1

    move-object v0, p0

    goto :goto_14
.end method

.method public static c(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 p1, 0x18

    .line 3295
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 281
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void

    :cond_22
    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 4022
    invoke-static {p0, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/yandex/metrica/impl/r$1;

    invoke-direct {v1, p1, p0}, Lcom/yandex/metrica/impl/r$1;-><init>(Ljava/io/File;Landroid/content/Context;)V

    const-string p0, "make_non_existed_world_readable"

    invoke-interface {v0, p0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_32
    return-void
.end method
