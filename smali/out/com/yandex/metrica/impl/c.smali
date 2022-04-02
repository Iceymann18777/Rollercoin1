.class public Lcom/yandex/metrica/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/c;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/yandex/metrica/impl/c;->c:J

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/io/File;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/r;->b(Landroid/content/Context;Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 170
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/c;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/c;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p1

    .line 177
    :catch_1a
    :cond_1a
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method private a(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/c;->b()Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/yandex/metrica/impl/c;->a(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v1

    .line 160
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/c;->a(Ljava/util/Map;Ljava/util/Map;)Z

    goto :goto_8

    :cond_21
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 211
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;J)J

    move-result-wide v5

    .line 214
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v1, v5, v3

    if-lez v1, :cond_9

    cmp-long v1, v7, v5

    if-gez v1, :cond_9

    .line 216
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_9

    :cond_42
    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 124
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "browser_open_times"

    .line 125
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string p1, "last_sync_time"

    const-wide/16 v2, 0x0

    .line 127
    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yandex/metrica/impl/c;->c:J
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    nop

    :cond_22
    :goto_22
    if-eqz v0, :cond_25

    return-object v0

    .line 132
    :cond_25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private b([B)[B
    .registers 7

    :try_start_0
    const-string v0, "MD5"

    .line 2272
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2273
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 2274
    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 2275
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 262
    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 263
    :goto_20
    array-length v3, p1

    if-ge v2, v3, :cond_31

    .line 264
    aget-byte v3, p1, v2

    array-length v4, v0

    rem-int v4, v2, v4

    aget-byte v4, v0, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_32

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_31
    return-object v1

    :catch_32
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 244
    invoke-static {p1}, Lcom/yandex/metrica/impl/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/c;->b([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 247
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 252
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/c;->b([B)[B

    move-result-object p1

    .line 253
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 254
    invoke-static {v0}, Lcom/yandex/metrica/impl/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a()Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    const-string v1, "b_meta.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_fa

    const/4 v1, 0x0

    .line 60
    :try_start_e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3c

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1112
    invoke-virtual {v2, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_eb
    .catchall {:try_start_e .. :try_end_21} :catchall_de

    .line 2101
    :try_start_21
    iget-object v3, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    const-string v6, "browsers.dat"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    .line 2102
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2103
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_de

    .line 66
    :catch_3c
    :cond_3c
    :try_start_3c
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v3, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_eb
    .catchall {:try_start_3c .. :try_end_43} :catchall_de

    .line 67
    :try_start_43
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_db
    .catchall {:try_start_43 .. :try_end_47} :catchall_d8

    .line 69
    :try_start_47
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v6
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_d6
    .catchall {:try_start_47 .. :try_end_4b} :catchall_d1

    .line 71
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v2, v7

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 73
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 75
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/c;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-direct {p0, v2}, Lcom/yandex/metrica/impl/c;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/yandex/metrica/impl/c;->c:J

    sub-long/2addr v7, v9

    sget-wide v9, Lcom/yandex/metrica/impl/c;->a:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_74

    const/4 v4, 0x1

    :cond_74
    if-eqz v4, :cond_bf

    .line 79
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/c;->a(Ljava/util/HashMap;)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/yandex/metrica/impl/c;->c:J

    .line 2136
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "browser_open_times"

    .line 2137
    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "last_sync_time"

    .line 2138
    iget-wide v7, p0, Lcom/yandex/metrica/impl/c;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2139
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    .line 2143
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2144
    array-length v4, v2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2145
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2146
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v7, 0x0

    .line 2147
    invoke-virtual {v0, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2148
    invoke-virtual {v0, v7, v8}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 2149
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2150
    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_bf} :catch_ce
    .catchall {:try_start_4b .. :try_end_bf} :catchall_c9

    .line 91
    :cond_bf
    :try_start_bf
    invoke-static {v6}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 92
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    goto :goto_f8

    :catchall_c9
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_e1

    :catch_ce
    move-object v2, v1

    move-object v1, v6

    goto :goto_ee

    :catchall_d1
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_e1

    :catch_d6
    move-object v2, v1

    goto :goto_ee

    :catchall_d8
    move-exception v0

    move-object v2, v1

    goto :goto_e1

    :catch_db
    move-object v0, v1

    move-object v2, v0

    goto :goto_ee

    :catchall_de
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 91
    :goto_e1
    invoke-static {v1}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 92
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_eb
    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    .line 91
    :goto_ee
    invoke-static {v1}, Lcom/yandex/metrica/impl/r;->a(Ljava/nio/channels/FileLock;)V

    .line 92
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 93
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V
    :try_end_f7
    .catchall {:try_start_bf .. :try_end_f7} :catchall_fa

    move-object v1, v2

    .line 95
    :goto_f8
    monitor-exit p0

    return-object v1

    :catchall_fa
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    .line 183
    invoke-static {v0}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 188
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 194
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v3

    const/16 v5, 0x2f

    if-lt v3, v5, :cond_19

    .line 197
    :try_start_3b
    iget-object v3, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x2000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 198
    iget-object v4, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    const-string v5, "b_meta.dat"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/metrica/impl/c;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_64} :catch_65

    goto :goto_19

    :catch_65
    nop

    goto :goto_19

    :cond_67
    return-object v1
.end method
