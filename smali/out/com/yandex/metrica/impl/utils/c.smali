.class public abstract Lcom/yandex/metrica/impl/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/utils/c;->a:Z

    .line 30
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/utils/c;->a:Z

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 103
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/utils/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-object p1

    .line 105
    :catchall_1c
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/c;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/utils/c;->a:Z

    return-void
.end method

.method a(ILjava/lang/String;)V
    .registers 6

    .line 74
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/utils/c;->a:Z

    if-eqz v0, :cond_22

    .line 75
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/yandex/metrica/impl/utils/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 80
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/utils/c;->a:Z

    if-eqz v0, :cond_f

    .line 81
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/yandex/metrica/impl/utils/c;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/utils/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/utils/c;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/utils/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    .line 62
    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/utils/c;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/utils/c;->a:Z

    return v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/utils/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x6

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/utils/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()Ljava/lang/String;
.end method
