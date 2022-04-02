.class public Lcom/yandex/metrica/impl/ob/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/metrica/impl/ob/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/k$a;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/k$a;->a(Lcom/yandex/metrica/impl/ob/k$a;)Lcom/yandex/metrica/impl/ob/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/k;->a:Lcom/yandex/metrica/impl/ob/j;

    .line 21
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/k$a;->a:Lcom/yandex/metrica/impl/ob/h;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/k;->b:Lcom/yandex/metrica/impl/ob/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/k$a;B)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/k;-><init>(Lcom/yandex/metrica/impl/ob/k$a;)V

    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/k$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">(",
            "Lcom/yandex/metrica/impl/ob/j<",
            "TT;>;)",
            "Lcom/yandex/metrica/impl/ob/k$a<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/k$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/k$a;-><init>(Lcom/yandex/metrica/impl/ob/j;)V

    return-object v0
.end method


# virtual methods
.method final a(Lcom/yandex/metrica/impl/ob/i;)V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/k;->a:Lcom/yandex/metrica/impl/ob/j;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/j;->a(Lcom/yandex/metrica/impl/ob/i;)V

    return-void
.end method

.method final b(Lcom/yandex/metrica/impl/ob/i;)Z
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/k;->b:Lcom/yandex/metrica/impl/ob/h;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_6
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/h;->a(Lcom/yandex/metrica/impl/ob/i;)Z

    move-result p1

    return p1
.end method
