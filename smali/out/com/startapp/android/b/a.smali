.class public Lcom/startapp/android/b/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/startapp/android/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/startapp/android/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    :try_start_18
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1b} :catch_1d

    const/4 v2, 0x1

    goto :goto_c

    :catch_1d
    nop

    goto :goto_c

    :cond_1f
    return v2
.end method

.method private i()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 190
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_26} :catch_29
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v1

    goto :goto_2a

    :catch_29
    move-exception v1

    .line 194
    :goto_2a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2d
    return-object v0
.end method

.method private j()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 202
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "mount"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 203
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_26} :catch_29
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v1

    goto :goto_2a

    :catch_29
    move-exception v1

    .line 206
    :goto_2a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2d
    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/startapp/android/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/startapp/android/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "su"

    invoke-virtual {p0, v0}, Lcom/startapp/android/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "busybox"

    .line 40
    invoke-virtual {p0, v0}, Lcom/startapp/android/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/startapp/android/b/a;->f()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/startapp/android/b/a;->g()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 41
    invoke-virtual {p0}, Lcom/startapp/android/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/startapp/android/b/a;->h()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/startapp/android/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    :goto_3e
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 8

    .line 171
    sget-object v0, Lcom/startapp/android/b/b;->d:[Ljava/lang/String;

    .line 175
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_18

    aget-object v4, v0, v2

    .line 177
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v3, 0x1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    return v3
.end method

.method public a([Ljava/lang/String;)Z
    .registers 4

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    sget-object v1, Lcom/startapp/android/b/b;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_1a

    .line 85
    array-length v1, p1

    if-lez v1, :cond_1a

    .line 86
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_1a
    invoke-direct {p0, v0}, Lcom/startapp/android/b/a;->a(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .registers 3

    .line 62
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public b([Ljava/lang/String;)Z
    .registers 4

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    sget-object v1, Lcom/startapp/android/b/b;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_1a

    .line 110
    array-length v1, p1

    if-lez v1, :cond_1a

    .line 111
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_1a
    invoke-direct {p0, v0}, Lcom/startapp/android/b/a;->a(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/startapp/android/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lcom/startapp/android/b/a;->b([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    const-string v0, "magisk"

    .line 154
    invoke-virtual {p0, v0}, Lcom/startapp/android/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 11

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ro.debuggable"

    const-string v2, "1"

    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro.secure"

    const-string v2, "0"

    .line 242
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-direct {p0}, Lcom/startapp/android/b/a;->i()[Ljava/lang/String;

    move-result-object v1

    .line 247
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v3, v2, :cond_5f

    aget-object v5, v1, v3

    .line 248
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 249
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 250
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    const/4 v4, 0x1

    goto :goto_26

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_5f
    return v4
.end method

.method public g()Z
    .registers 17

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/startapp/android/b/a;->j()[Ljava/lang/String;

    move-result-object v0

    .line 269
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v3, v1, :cond_4a

    aget-object v5, v0, v3

    const-string v6, " "

    .line 272
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 274
    array-length v6, v5

    const/4 v7, 0x4

    if-ge v6, v7, :cond_17

    goto :goto_47

    :cond_17
    const/4 v6, 0x1

    .line 279
    aget-object v7, v5, v6

    const/4 v8, 0x3

    .line 280
    aget-object v5, v5, v8

    .line 282
    sget-object v8, Lcom/startapp/android/b/b;->e:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v9, :cond_47

    aget-object v11, v8, v10

    .line 283
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_44

    const-string v11, ","

    .line 286
    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_33
    if-ge v13, v12, :cond_44

    aget-object v14, v11, v13

    const-string v15, "rw"

    .line 288
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_41

    const/4 v4, 0x1

    goto :goto_44

    :cond_41
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    :cond_44
    :goto_44
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_4a
    return v4
.end method

.method public h()Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 308
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 309
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 310
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_2d

    if-eqz v2, :cond_27

    const/4 v0, 0x1

    :cond_27
    if-eqz v1, :cond_2c

    .line 314
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_2c
    return v0

    :catchall_2d
    nop

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_33
    return v0
.end method
