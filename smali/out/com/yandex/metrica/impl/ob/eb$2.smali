.class Lcom/yandex/metrica/impl/ob/eb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/eb;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/eb;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/eb;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eb$2;->a:Lcom/yandex/metrica/impl/ob/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb$2;->a:Lcom/yandex/metrica/impl/ob/eb;

    new-instance v1, Lcom/yandex/metrica/impl/ob/eb$a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/eb$2;->a:Lcom/yandex/metrica/impl/ob/eb;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/eb$a;-><init>(Lcom/yandex/metrica/impl/ob/eb;B)V

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/eb;->a(Lcom/yandex/metrica/impl/ob/eb;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    return-void
.end method
