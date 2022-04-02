.class Lcom/yandex/metrica/impl/bj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bj;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bj;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/yandex/metrica/impl/bj$1;->a:Lcom/yandex/metrica/impl/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj$1;->a:Lcom/yandex/metrica/impl/bj;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bj;->a()V

    return-void
.end method
