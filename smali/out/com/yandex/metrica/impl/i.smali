.class abstract Lcom/yandex/metrica/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/i$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/i$a;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yandex/metrica/impl/i;->a:Lcom/yandex/metrica/impl/i$a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/i;->a:Lcom/yandex/metrica/impl/i$a;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/i$a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/i;->b(Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method abstract b(Ljava/lang/Throwable;)V
.end method
