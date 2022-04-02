.class Lcom/yandex/metrica/impl/ob/fs$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/fu$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fu$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/fu$b;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/fu$b;",
            "TT;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fs$c;->a:Lcom/yandex/metrica/impl/ob/fu$b;

    .line 85
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fs$c;->b:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/fu$b;Ljava/lang/Object;B)V
    .registers 4

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fs$c;-><init>(Lcom/yandex/metrica/impl/ob/fu$b;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fs$c;->a:Lcom/yandex/metrica/impl/ob/fu$b;

    if-eqz v0, :cond_9

    .line 91
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fs$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/fu$b;->a(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
