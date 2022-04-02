.class Lcom/yandex/metrica/impl/ax$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yandex/metrica/impl/ax;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/yandex/metrica/impl/ax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ax;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ax$a;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Landroid/content/Context;)Landroid/content/Context;

    return-object p0
.end method

.method a(Landroid/os/Handler;)Lcom/yandex/metrica/impl/ax$a;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Landroid/os/Handler;)Landroid/os/Handler;

    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/ay;)Lcom/yandex/metrica/impl/ax$a;
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/ay;)Lcom/yandex/metrica/impl/ay;

    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/j;)Lcom/yandex/metrica/impl/ax$a;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/j;)Lcom/yandex/metrica/impl/j;

    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/ob/dw;)Lcom/yandex/metrica/impl/ax$a;
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/ob/dw;)Lcom/yandex/metrica/impl/ob/dw;

    return-object p0
.end method

.method a()Lcom/yandex/metrica/impl/ax;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    return-object v0
.end method
