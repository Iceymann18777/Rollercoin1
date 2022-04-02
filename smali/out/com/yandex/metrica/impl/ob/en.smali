.class Lcom/yandex/metrica/impl/ob/en;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ev;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/es;

.field private c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/yandex/metrica/impl/ob/en;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/en;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/es;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/es;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/es;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/en;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 136
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/en;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_71
    .catchall {:try_start_2 .. :try_end_13} :catchall_6f

    .line 137
    :try_start_13
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 141
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 142
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_57} :catch_6c
    .catchall {:try_start_13 .. :try_end_57} :catchall_69

    goto :goto_45

    .line 151
    :cond_58
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5d
    .catchall {:try_start_58 .. :try_end_5b} :catchall_a1

    .line 154
    monitor-exit p0

    return-void

    :catch_5d
    move-exception p1

    .line 153
    :try_start_5e
    sget-object v0, Lcom/yandex/metrica/impl/ob/en;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_a1

    .line 154
    monitor-exit p0

    return-void

    :catchall_69
    move-exception p1

    move-object v0, v1

    goto :goto_90

    :catch_6c
    move-exception p1

    move-object v0, v1

    goto :goto_72

    :catchall_6f
    move-exception p1

    goto :goto_90

    :catch_71
    move-exception p1

    .line 147
    :goto_72
    :try_start_72
    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_6f

    if-eqz v0, :cond_8e

    .line 151
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_82
    .catchall {:try_start_7d .. :try_end_80} :catchall_a1

    .line 154
    monitor-exit p0

    return-void

    :catch_82
    move-exception p1

    .line 153
    :try_start_83
    sget-object v0, Lcom/yandex/metrica/impl/ob/en;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_a1

    .line 154
    monitor-exit p0

    return-void

    .line 157
    :cond_8e
    monitor-exit p0

    return-void

    :goto_90
    if-eqz v0, :cond_a0

    .line 151
    :try_start_92
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96
    .catchall {:try_start_92 .. :try_end_95} :catchall_a1

    goto :goto_a0

    :catch_96
    move-exception v0

    .line 153
    :try_start_97
    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_a0
    :goto_a0
    throw p1
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p1

    monitor-exit p0

    goto :goto_a5

    :goto_a4
    throw p1

    :goto_a5
    goto :goto_a4
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sslpinningv1-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->c:Ljava/io/File;

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 92
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/en;->a(Ljava/util/Map;)V

    .line 94
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/en;->c:Ljava/io/File;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_30

    .line 96
    :cond_2c
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/en;->c()Ljava/util/Map;

    move-result-object p1

    .line 98
    :goto_30
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/es;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/es;->a(Ljava/util/Map;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 99
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_68

    const/4 v1, 0x0

    .line 105
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/en;->c:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_56

    .line 108
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_1c
    if-eqz v3, :cond_43

    const-string v4, "type-"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v1, 0x5

    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    goto :goto_3e

    .line 115
    :cond_35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 116
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3e
    :goto_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_53

    goto :goto_1c

    .line 124
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_68

    goto :goto_51

    :catch_47
    move-exception v1

    .line 126
    :try_start_48
    sget-object v2, Lcom/yandex/metrica/impl/ob/en;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_68

    .line 130
    :goto_51
    monitor-exit p0

    return-object v0

    :catchall_53
    move-exception v0

    move-object v1, v2

    goto :goto_57

    :catchall_56
    move-exception v0

    :goto_57
    if-eqz v1, :cond_67

    .line 124
    :try_start_59
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_68

    goto :goto_67

    :catch_5d
    move-exception v1

    .line 126
    :try_start_5e
    sget-object v2, Lcom/yandex/metrica/impl/ob/en;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_67
    :goto_67
    throw v0
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    monitor-exit p0

    goto :goto_6c

    :goto_6b
    throw v0

    :goto_6c
    goto :goto_6b
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/es;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/es;->c()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/en;->a(Ljava/util/Map;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 161
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()J
    .registers 3

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/es;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/es;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/es;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/es;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 69
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/en;->d()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 70
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/es;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/es;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_20

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 44
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v2}, Lcom/yandex/metrica/impl/ob/en;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 45
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/en;->c:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 47
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->b:Lcom/yandex/metrica/impl/ob/es;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/es;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 55
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/en;->d()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 56
    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/en;->c:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method
