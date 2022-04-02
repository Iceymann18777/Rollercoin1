.class Lcom/yandex/metrica/impl/af$8;
.super Lcom/yandex/metrica/impl/af$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/af;->a(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/yandex/metrica/impl/af;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/af;ILandroid/os/Bundle;)V
    .registers 4

    .line 132
    iput-object p1, p0, Lcom/yandex/metrica/impl/af$8;->c:Lcom/yandex/metrica/impl/af;

    iput p2, p0, Lcom/yandex/metrica/impl/af$8;->a:I

    iput-object p3, p0, Lcom/yandex/metrica/impl/af$8;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/af$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/af$8;->c:Lcom/yandex/metrica/impl/af;

    invoke-static {v0}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/af;)Lcom/yandex/metrica/impl/ae;

    move-result-object v0

    iget v1, p0, Lcom/yandex/metrica/impl/af$8;->a:I

    iget-object v2, p0, Lcom/yandex/metrica/impl/af$8;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/impl/ae;->a(ILandroid/os/Bundle;)V

    return-void
.end method
