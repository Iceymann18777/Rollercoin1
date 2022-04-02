.class Lcom/yandex/metrica/impl/af$7;
.super Lcom/yandex/metrica/impl/af$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/af;->a(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Lcom/yandex/metrica/impl/af;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/af;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 122
    iput-object p1, p0, Lcom/yandex/metrica/impl/af$7;->f:Lcom/yandex/metrica/impl/af;

    iput p2, p0, Lcom/yandex/metrica/impl/af$7;->a:I

    iput-object p3, p0, Lcom/yandex/metrica/impl/af$7;->b:Ljava/lang/String;

    iput p4, p0, Lcom/yandex/metrica/impl/af$7;->c:I

    iput-object p5, p0, Lcom/yandex/metrica/impl/af$7;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/yandex/metrica/impl/af$7;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/af$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/impl/af$7;->f:Lcom/yandex/metrica/impl/af;

    invoke-static {v0}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/af;)Lcom/yandex/metrica/impl/ae;

    move-result-object v1

    iget v2, p0, Lcom/yandex/metrica/impl/af$7;->a:I

    iget-object v3, p0, Lcom/yandex/metrica/impl/af$7;->b:Ljava/lang/String;

    iget v4, p0, Lcom/yandex/metrica/impl/af$7;->c:I

    iget-object v5, p0, Lcom/yandex/metrica/impl/af$7;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/yandex/metrica/impl/af$7;->e:Landroid/os/Bundle;

    invoke-interface/range {v1 .. v6}, Lcom/yandex/metrica/impl/ae;->a(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
