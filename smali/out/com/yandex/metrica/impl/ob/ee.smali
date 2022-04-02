.class public final Lcom/yandex/metrica/impl/ob/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Ljava/lang/Integer;

    .line 43
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Z

    .line 44
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->d:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/Integer;

    .line 33
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Ljava/lang/Integer;

    .line 34
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Z

    .line 35
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ee;->d:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ee;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ee;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ee;->e:Ljava/lang/String;

    return-object v0
.end method
