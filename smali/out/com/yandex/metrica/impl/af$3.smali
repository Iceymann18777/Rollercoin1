.class Lcom/yandex/metrica/impl/af$3;
.super Lcom/yandex/metrica/impl/af$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/af;->a(Landroid/content/Intent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/yandex/metrica/impl/af;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/af;Landroid/content/Intent;II)V
    .registers 5

    .line 72
    iput-object p1, p0, Lcom/yandex/metrica/impl/af$3;->d:Lcom/yandex/metrica/impl/af;

    iput-object p2, p0, Lcom/yandex/metrica/impl/af$3;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/yandex/metrica/impl/af$3;->b:I

    iput p4, p0, Lcom/yandex/metrica/impl/af$3;->c:I

    invoke-direct {p0}, Lcom/yandex/metrica/impl/af$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/af$3;->d:Lcom/yandex/metrica/impl/af;

    invoke-static {v0}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/af;)Lcom/yandex/metrica/impl/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/af$3;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/yandex/metrica/impl/af$3;->b:I

    iget v3, p0, Lcom/yandex/metrica/impl/af$3;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ae;->a(Landroid/content/Intent;II)V

    return-void
.end method
