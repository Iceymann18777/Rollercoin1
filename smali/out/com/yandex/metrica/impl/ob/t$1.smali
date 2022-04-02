.class Lcom/yandex/metrica/impl/ob/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/t;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t$1;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t$1;->a:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->c()V

    return-void
.end method
