.class Lcom/yandex/metrica/impl/ob/eb$a;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/eb;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/eb;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eb$a;->a:Lcom/yandex/metrica/impl/ob/eb;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/eb;B)V
    .registers 3

    .line 166
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/eb$a;-><init>(Lcom/yandex/metrica/impl/ob/eb;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 3

    .line 170
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb$a;->a:Lcom/yandex/metrica/impl/ob/eb;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/eb;->a(Lcom/yandex/metrica/impl/ob/eb;Landroid/telephony/SignalStrength;)V

    return-void
.end method
