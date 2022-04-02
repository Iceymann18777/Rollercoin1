.class Lcom/yandex/metrica/impl/af$5;
.super Lcom/yandex/metrica/impl/af$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/af;->b(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/yandex/metrica/impl/af;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/af;Landroid/content/Intent;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/yandex/metrica/impl/af$5;->b:Lcom/yandex/metrica/impl/af;

    iput-object p2, p0, Lcom/yandex/metrica/impl/af$5;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/af$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/af$5;->b:Lcom/yandex/metrica/impl/af;

    invoke-static {v0}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/af;)Lcom/yandex/metrica/impl/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/af$5;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ae;->b(Landroid/content/Intent;)V

    return-void
.end method
