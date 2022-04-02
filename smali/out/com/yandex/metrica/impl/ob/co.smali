.class public Lcom/yandex/metrica/impl/ob/co;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/co$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Lcom/yandex/metrica/impl/ob/fj;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/ob/co$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/co$1;-><init>(Lcom/yandex/metrica/impl/ob/co;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/co;->d:Lcom/yandex/metrica/impl/ob/fj;

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/co;
    .registers 1

    .line 46
    sget-object v0, Lcom/yandex/metrica/impl/ob/co$a;->a:Lcom/yandex/metrica/impl/ob/co;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/co;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/co;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static d()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 110
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/a;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 111
    array-length v1, v0

    if-lez v1, :cond_11

    const/4 v1, 0x0

    .line 112
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ex;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 1095
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p3, "https://certificate.mobile.yandex.net/api/v1/pins"

    goto :goto_1b

    .line 1098
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/api/v1/pins"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1103
    :goto_1b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 1104
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/co;->c()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/co;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-nez v0, :cond_37

    const/4 v1, 0x1

    :cond_37
    if-eqz v1, :cond_6d

    .line 73
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/co;->b:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/co;->a:Ljava/lang/String;

    .line 75
    new-instance p2, Lcom/yandex/metrica/impl/ob/fd;

    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/co;->d:Lcom/yandex/metrica/impl/ob/fj;

    invoke-direct {p2, p3, v2, v2}, Lcom/yandex/metrica/impl/ob/fd;-><init>(Lcom/yandex/metrica/impl/ob/fj;ZZ)V

    .line 76
    invoke-static {}, Lcom/yandex/metrica/impl/ob/co;->d()Ljava/security/cert/X509Certificate;

    move-result-object p3

    if-eqz p3, :cond_6d

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/co;->a:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/yandex/metrica/impl/ob/fd;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 83
    new-instance p3, Lcom/yandex/metrica/impl/ob/ew;

    invoke-direct {p3, p1, p2}, Lcom/yandex/metrica/impl/ob/ew;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/fd;)V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_6f

    .line 85
    :try_start_5c
    new-instance p1, Lcom/yandex/metrica/impl/ob/ez;

    invoke-direct {p1, p3}, Lcom/yandex/metrica/impl/ob/ez;-><init>(Lcom/yandex/metrica/impl/ob/fk;)V

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ez;->a()Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/co;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6b} :catch_6d
    .catchall {:try_start_5c .. :try_end_6b} :catchall_6f

    .line 88
    monitor-exit p0

    return-void

    .line 92
    :catch_6d
    :cond_6d
    monitor-exit p0

    return-void

    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/co;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .registers 2

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/co;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
