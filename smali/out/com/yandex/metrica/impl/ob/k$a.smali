.class public final Lcom/yandex/metrica/impl/ob/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.field public a:Lcom/yandex/metrica/impl/ob/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/ob/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/j;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/k$a;->b:Lcom/yandex/metrica/impl/ob/j;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/k$a;)Lcom/yandex/metrica/impl/ob/j;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/k$a;->b:Lcom/yandex/metrica/impl/ob/j;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/h;)Lcom/yandex/metrica/impl/ob/k$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/h<",
            "TT;>;)",
            "Lcom/yandex/metrica/impl/ob/k$a<",
            "TT;>;"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/k$a;->a:Lcom/yandex/metrica/impl/ob/h;

    return-object p0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/k<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/ob/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/k;-><init>(Lcom/yandex/metrica/impl/ob/k$a;B)V

    return-object v0
.end method
