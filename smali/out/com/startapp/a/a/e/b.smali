.class public Lcom/startapp/a/a/e/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Lcom/startapp/a/a/e/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/startapp/a/a/e/c;

    invoke-direct {v0}, Lcom/startapp/a/a/e/c;-><init>()V

    iput-object v0, p0, Lcom/startapp/a/a/e/b;->a:Lcom/startapp/a/a/e/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/a/a/a/c;)Ljava/lang/String;
    .registers 13

    .line 17
    invoke-virtual {p1}, Lcom/startapp/a/a/a/c;->b()I

    move-result v0

    .line 18
    invoke-virtual {p1}, Lcom/startapp/a/a/a/c;->c()I

    move-result v1

    const/4 v2, 0x0

    .line 23
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_47
    .catchall {:try_start_9 .. :try_end_e} :catchall_45

    .line 24
    :try_start_e
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v1, :cond_31

    .line 27
    invoke-virtual {p1, v5}, Lcom/startapp/a/a/a/c;->a(I)[J

    move-result-object v6

    const/4 v7, 0x0

    :goto_1c
    const/16 v8, 0x1000

    if-ge v7, v8, :cond_2e

    add-int/lit8 v8, v0, -0x1

    if-lez v0, :cond_2d

    .line 29
    aget-wide v9, v6, v7

    invoke-virtual {v2, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_42
    .catchall {:try_start_e .. :try_end_29} :catchall_3f

    add-int/lit8 v7, v7, 0x1

    move v0, v8

    goto :goto_1c

    :cond_2d
    move v0, v8

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 37
    :cond_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_34

    .line 42
    :catch_34
    iget-object p1, p0, Lcom/startapp/a/a/e/b;->a:Lcom/startapp/a/a/e/c;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/startapp/a/a/e/c;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_3f
    move-exception p1

    move-object v2, v3

    goto :goto_50

    :catch_42
    move-exception p1

    move-object v2, v3

    goto :goto_48

    :catchall_45
    move-exception p1

    goto :goto_50

    :catch_47
    move-exception p1

    .line 33
    :goto_48
    :try_start_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "problem serializing bitSet"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_45

    :goto_50
    if-eqz v2, :cond_55

    .line 37
    :try_start_52
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_55

    .line 39
    :catch_55
    :cond_55
    goto :goto_57

    :goto_56
    throw p1

    :goto_57
    goto :goto_56
.end method
