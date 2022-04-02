.class Lcom/yandex/metrica/impl/ad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ad;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ad;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/yandex/metrica/impl/ad$1;->a:Lcom/yandex/metrica/impl/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad$1;->a:Lcom/yandex/metrica/impl/ad;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad;)V

    return-void
.end method
