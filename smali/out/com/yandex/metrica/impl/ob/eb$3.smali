.class Lcom/yandex/metrica/impl/ob/eb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/eb;->a()V
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

    .line 110
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eb$3;->a:Lcom/yandex/metrica/impl/ob/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb$3;->a:Lcom/yandex/metrica/impl/ob/eb;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/eb;->a(Lcom/yandex/metrica/impl/ob/eb;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 114
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb$3;->a:Lcom/yandex/metrica/impl/ob/eb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/eb;->a(Lcom/yandex/metrica/impl/ob/eb;Z)Z

    .line 117
    :try_start_e
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb$3;->a:Lcom/yandex/metrica/impl/ob/eb;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/eb;->b(Lcom/yandex/metrica/impl/ob/eb;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb$3;->a:Lcom/yandex/metrica/impl/ob/eb;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/eb;->c(Lcom/yandex/metrica/impl/ob/eb;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb$3;->a:Lcom/yandex/metrica/impl/ob/eb;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/eb;->b(Lcom/yandex/metrica/impl/ob/eb;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void
.end method
