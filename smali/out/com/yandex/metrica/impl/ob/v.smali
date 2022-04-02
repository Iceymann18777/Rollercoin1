.class public abstract Lcom/yandex/metrica/impl/ob/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/aa<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/aa;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/aa<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/v;->a:Lcom/yandex/metrica/impl/ob/aa;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/h;)Z
    .registers 3

    .line 27
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/v;->b(Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/x;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/v;->a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/x;)Z

    move-result p1

    return p1
.end method

.method protected abstract a(Lcom/yandex/metrica/impl/h;Lcom/yandex/metrica/impl/ob/x;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/h;",
            "Lcom/yandex/metrica/impl/ob/x<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method b(Lcom/yandex/metrica/impl/h;)Lcom/yandex/metrica/impl/ob/x;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/h;",
            ")",
            "Lcom/yandex/metrica/impl/ob/x<",
            "TT;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/v;->a:Lcom/yandex/metrica/impl/ob/aa;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/h;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/aa;->a(I)Lcom/yandex/metrica/impl/ob/x;

    move-result-object p1

    return-object p1
.end method
