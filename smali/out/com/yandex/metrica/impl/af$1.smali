.class Lcom/yandex/metrica/impl/af$1;
.super Lcom/yandex/metrica/impl/af$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/af;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/af;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/af;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/af$1;->a:Lcom/yandex/metrica/impl/af;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/af$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/af$1;->a:Lcom/yandex/metrica/impl/af;

    invoke-static {v0}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/af;)Lcom/yandex/metrica/impl/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ae;->a()V

    return-void
.end method
