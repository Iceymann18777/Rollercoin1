.class Lcom/yandex/metrica/impl/az$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/az$b;-><init>(Lcom/yandex/metrica/impl/az;Lcom/yandex/metrica/impl/az$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/j<",
        "Lcom/yandex/metrica/impl/ao;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/az$b;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/az$b;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/yandex/metrica/impl/az$b$1;->a:Lcom/yandex/metrica/impl/az$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/az$b$1;->a:Lcom/yandex/metrica/impl/az$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/az$b;->c:Z

    return-void
.end method

.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/i;)V
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/az$b$1;->a()V

    return-void
.end method
