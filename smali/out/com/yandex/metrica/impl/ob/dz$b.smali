.class abstract Lcom/yandex/metrica/impl/ob/dz$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# static fields
.field static final a:Ljava/lang/Integer;

.field static final b:Ljava/lang/Integer;

.field static final c:Ljava/lang/Integer;

.field static final d:Ljava/lang/Integer;

.field static final e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7fffffff

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->a:Ljava/lang/Integer;

    .line 39
    sput-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->b:Ljava/lang/Integer;

    .line 40
    sput-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->c:Ljava/lang/Integer;

    .line 41
    sput-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->d:Ljava/lang/Integer;

    .line 42
    sput-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->e:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Landroid/telephony/CellInfo;)Lcom/yandex/metrica/impl/ob/dz;
.end method

.method protected a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/telephony/CellSignalStrength;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Integer;)Lcom/yandex/metrica/impl/ob/dz;
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    const/4 v5, 0x0

    if-eqz v0, :cond_15

    .line 55
    sget-object v6, Lcom/yandex/metrica/impl/ob/dz$b;->a:Ljava/lang/Integer;

    if-eq v0, v6, :cond_12

    goto :goto_13

    :cond_12
    move-object v0, v5

    :goto_13
    move-object v10, v0

    goto :goto_16

    :cond_15
    move-object v10, v5

    :goto_16
    if-eqz v1, :cond_20

    .line 59
    sget-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->b:Ljava/lang/Integer;

    if-eq v1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object v1, v5

    :goto_1e
    move-object v9, v1

    goto :goto_21

    :cond_20
    move-object v9, v5

    :goto_21
    if-eqz p3, :cond_2d

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v13, v0

    goto :goto_2e

    :cond_2d
    move-object v13, v5

    :goto_2e
    if-eqz v3, :cond_38

    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->c:Ljava/lang/Integer;

    if-eq v3, v0, :cond_35

    goto :goto_36

    :cond_35
    move-object v3, v5

    :goto_36
    move-object v7, v3

    goto :goto_39

    :cond_38
    move-object v7, v5

    :goto_39
    if-eqz v2, :cond_43

    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->d:Ljava/lang/Integer;

    if-eq v2, v0, :cond_40

    goto :goto_41

    :cond_40
    move-object v2, v5

    :goto_41
    move-object v8, v2

    goto :goto_44

    :cond_43
    move-object v8, v5

    :goto_44
    if-eqz v4, :cond_4d

    .line 71
    sget-object v0, Lcom/yandex/metrica/impl/ob/dz$b;->e:Ljava/lang/Integer;

    if-eq v4, v0, :cond_4d

    move-object/from16 v16, v4

    goto :goto_4f

    :cond_4d
    move-object/from16 v16, v5

    .line 73
    :goto_4f
    new-instance v0, Lcom/yandex/metrica/impl/ob/dz;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v0

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-direct/range {v6 .. v16}, Lcom/yandex/metrica/impl/ob/dz;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Integer;)V

    return-object v0
.end method
