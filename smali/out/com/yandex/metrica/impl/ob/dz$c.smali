.class Lcom/yandex/metrica/impl/ob/dz$c;
.super Lcom/yandex/metrica/impl/ob/dz$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dz$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/telephony/CellInfo;)Lcom/yandex/metrica/impl/ob/dz;
    .registers 13

    .line 86
    check-cast p1, Landroid/telephony/CellInfoGsm;

    .line 87
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 89
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 90
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->isRegistered()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    .line 88
    invoke-virtual/range {v2 .. v10}, Lcom/yandex/metrica/impl/ob/dz$c;->a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/telephony/CellSignalStrength;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Integer;)Lcom/yandex/metrica/impl/ob/dz;

    move-result-object p1

    return-object p1
.end method
