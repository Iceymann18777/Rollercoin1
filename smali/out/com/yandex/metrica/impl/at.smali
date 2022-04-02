.class Lcom/yandex/metrica/impl/at;
.super Lcom/yandex/metrica/impl/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/at$a;,
        Lcom/yandex/metrica/impl/at$b;,
        Lcom/yandex/metrica/impl/at$c;
    }
.end annotation


# instance fields
.field m:Lcom/yandex/metrica/c$a;

.field n:Lcom/yandex/metrica/impl/ba;

.field o:Lcom/yandex/metrica/impl/ob/bn;

.field p:Lcom/yandex/metrica/impl/ob/t;

.field q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field r:I

.field s:I

.field private t:Lcom/yandex/metrica/impl/at$c;

.field private final u:Lcom/yandex/metrica/impl/utils/f;

.field private v:Z


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/t;)V
    .registers 6

    .line 83
    invoke-direct {p0}, Lcom/yandex/metrica/impl/l;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/yandex/metrica/impl/at;->r:I

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/yandex/metrica/impl/at;->s:I

    .line 80
    new-instance v0, Lcom/yandex/metrica/impl/utils/f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/f;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/at;->u:Lcom/yandex/metrica/impl/utils/f;

    .line 84
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->p:Lcom/yandex/metrica/impl/ob/t;

    .line 85
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->i()Lcom/yandex/metrica/impl/ob/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/at;->o:Lcom/yandex/metrica/impl/ob/bn;

    .line 86
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->h()Lcom/yandex/metrica/impl/ba;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    .line 2029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1156
    invoke-static {}, Lcom/yandex/metrica/impl/utils/m;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1154
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ap;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$a$f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result p1

    .line 87
    iput p1, p0, Lcom/yandex/metrica/impl/at;->r:I

    return-void
.end method

.method public static A()Lcom/yandex/metrica/impl/at$a;
    .registers 1

    .line 619
    new-instance v0, Lcom/yandex/metrica/impl/at$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/at$a;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/yandex/metrica/impl/a$a;)I
    .registers 7

    const/4 v0, 0x0

    .line 465
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-static {v1}, Lcom/yandex/metrica/impl/at;->a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$a;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 468
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, v1, :cond_1e

    aget-object v4, p0, v2

    const/4 v5, 0x7

    .line 469
    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v4
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1a} :catch_1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1e
    move v0, v3

    :catch_1f
    :cond_1f
    return v0
.end method

.method private static a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$a;
    .registers 6

    .line 236
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 238
    new-array v0, v0, [Lcom/yandex/metrica/c$a$a;

    .line 239
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 241
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    :try_start_19
    new-instance v4, Lcom/yandex/metrica/c$a$a;

    invoke-direct {v4}, Lcom/yandex/metrica/c$a$a;-><init>()V

    .line 245
    iput-object v3, v4, Lcom/yandex/metrica/c$a$a;->b:Ljava/lang/String;

    .line 246
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/yandex/metrica/c$a$a;->c:Ljava/lang/String;

    .line 247
    aput-object v4, v0, v2
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_28} :catch_28

    :catch_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2b
    return-object v0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected a(JLcom/yandex/metrica/impl/ob/bl;)Landroid/database/Cursor;
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->o:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bn;->b(JLcom/yandex/metrica/impl/ob/bl;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/yandex/metrica/impl/at$c;[Lcom/yandex/metrica/c$a$c;)Lcom/yandex/metrica/c$a;
    .registers 6

    .line 104
    new-instance v0, Lcom/yandex/metrica/c$a;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a;-><init>()V

    .line 105
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/c$a;)V

    .line 106
    iget-object v1, p1, Lcom/yandex/metrica/impl/at$c;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/yandex/metrica/impl/at$c;->a:Ljava/util/List;

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/c$a$d;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yandex/metrica/c$a$d;

    iput-object v1, v0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$d;

    .line 108
    iget-object p1, p1, Lcom/yandex/metrica/impl/at$c;->c:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/yandex/metrica/impl/at;->a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/c$a$a;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/c$a;->d:[Lcom/yandex/metrica/c$a$a;

    .line 109
    iput-object p2, v0, Lcom/yandex/metrica/c$a;->e:[Lcom/yandex/metrica/c$a$c;

    .line 110
    iget p1, p0, Lcom/yandex/metrica/impl/at;->r:I

    const/16 p2, 0x8

    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/yandex/metrica/impl/at;->r:I

    return-object v0
.end method

.method protected a(JLcom/yandex/metrica/c$a$d$b;)Lcom/yandex/metrica/impl/at$b;
    .registers 13

    .line 480
    new-instance v0, Lcom/yandex/metrica/c$a$d;

    invoke-direct {v0}, Lcom/yandex/metrica/c$a$d;-><init>()V

    .line 481
    iput-wide p1, v0, Lcom/yandex/metrica/c$a$d;->b:J

    .line 482
    iput-object p3, v0, Lcom/yandex/metrica/c$a$d;->c:Lcom/yandex/metrica/c$a$d$b;

    .line 484
    iget p3, p3, Lcom/yandex/metrica/c$a$d$b;->d:I

    invoke-static {p3}, Lcom/yandex/metrica/impl/ap;->a(I)Lcom/yandex/metrica/impl/ob/bl;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 489
    :try_start_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/at;->a(JLcom/yandex/metrica/impl/ob/bl;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_170
    .catchall {:try_start_11 .. :try_end_15} :catchall_16b

    .line 491
    :try_start_15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_168
    .catchall {:try_start_15 .. :try_end_1a} :catchall_165

    move-object p3, v1

    .line 493
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_149

    .line 494
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 495
    invoke-static {p1, v3}, Lcom/yandex/metrica/impl/utils/e;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v4, "type"

    .line 4547
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 4549
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-boolean v5, p0, Lcom/yandex/metrica/impl/at;->v:Z

    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->a(IZ)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "custom_type"

    .line 4550
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->b(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "name"

    .line 4551
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "value"

    .line 4552
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "time"

    .line 4553
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/yandex/metrica/impl/ap$b;->a(J)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "number"

    .line 4554
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->a(I)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "cell_info"

    .line 4555
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "location_info"

    .line 4556
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "wifi_network_info"

    .line 4557
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "error_environment"

    .line 4558
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "user_info"

    .line 4559
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->h(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "truncated"

    .line 4560
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->b(I)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "connection_type"

    .line 4561
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->c(I)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "cellular_connection_type"

    .line 4562
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    const-string v5, "wifi_access_point"

    .line 4563
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ap$b;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ap$b;

    move-result-object v4

    .line 3570
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ap$b;->c()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_e0

    .line 3571
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ap$b;->e()Lcom/yandex/metrica/c$a$d$a;

    move-result-object v4

    goto :goto_e1

    :cond_e0
    move-object v4, v1

    :goto_e1
    if-eqz v4, :cond_1b

    .line 5457
    new-instance v5, Lcom/yandex/metrica/impl/a$a;

    const-string v6, "app_environment"

    .line 5458
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_environment_revision"

    .line 5459
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Lcom/yandex/metrica/impl/a$a;-><init>(Ljava/lang/String;J)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_f8} :catch_169
    .catchall {:try_start_1b .. :try_end_f8} :catchall_165

    if-nez p3, :cond_10e

    .line 501
    :try_start_fa
    iget p3, p0, Lcom/yandex/metrica/impl/at;->s:I

    if-gez p3, :cond_109

    .line 502
    invoke-static {v5}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/a$a;)I

    move-result p3

    iput p3, p0, Lcom/yandex/metrica/impl/at;->s:I

    .line 503
    iget v3, p0, Lcom/yandex/metrica/impl/at;->r:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/yandex/metrica/impl/at;->r:I
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_109} :catch_10b
    .catchall {:try_start_fa .. :try_end_109} :catchall_165

    :cond_109
    move-object p3, v5

    goto :goto_116

    :catch_10b
    move-object v1, p1

    move-object p3, v5

    goto :goto_171

    .line 505
    :cond_10e
    :try_start_10e
    invoke-virtual {p3, v5}, Lcom/yandex/metrica/impl/a$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_116

    const/4 v2, 0x1

    goto :goto_149

    .line 5539
    :cond_116
    :goto_116
    iget-object v3, p0, Lcom/yandex/metrica/impl/at;->u:Lcom/yandex/metrica/impl/utils/f;

    iget-object v5, v4, Lcom/yandex/metrica/c$a$d$a;->f:[B

    const v6, 0x3c000

    invoke-virtual {v3, v5, v6}, Lcom/yandex/metrica/impl/utils/f;->a([BI)[B

    move-result-object v3

    .line 5540
    iget-object v5, v4, Lcom/yandex/metrica/c$a$d$a;->f:[B

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_135

    .line 5541
    iput-object v3, v4, Lcom/yandex/metrica/c$a$d$a;->f:[B

    .line 5542
    iget v5, v4, Lcom/yandex/metrica/c$a$d$a;->k:I

    iget-object v6, v4, Lcom/yandex/metrica/c$a$d$a;->f:[B

    array-length v6, v6

    array-length v3, v3

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lcom/yandex/metrica/c$a$d$a;->k:I

    .line 512
    :cond_135
    iget v3, p0, Lcom/yandex/metrica/impl/at;->r:I

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/yandex/metrica/impl/at;->r:I

    const v5, 0x3d400

    if-ge v3, v5, :cond_149

    .line 518
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 522
    :cond_149
    :goto_149
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_161

    .line 523
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/c$a$d$a;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/yandex/metrica/c$a$d$a;

    iput-object p2, v0, Lcom/yandex/metrica/c$a$d;->d:[Lcom/yandex/metrica/c$a$d$a;
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_15d} :catch_169
    .catchall {:try_start_10e .. :try_end_15d} :catchall_165

    .line 532
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    goto :goto_174

    :cond_161
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    return-object v1

    :catchall_165
    move-exception p2

    move-object v1, p1

    goto :goto_16c

    :catch_168
    move-object p3, v1

    :catch_169
    move-object v1, p1

    goto :goto_171

    :catchall_16b
    move-exception p2

    :goto_16c
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    throw p2

    :catch_170
    move-object p3, v1

    :goto_171
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 535
    :goto_174
    new-instance p1, Lcom/yandex/metrica/impl/at$b;

    invoke-direct {p1, v0, p3, v2}, Lcom/yandex/metrica/impl/at$b;-><init>(Lcom/yandex/metrica/c$a$d;Lcom/yandex/metrica/impl/a$a;Z)V

    return-object p1
.end method

.method a(Lcom/yandex/metrica/c$a;)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->p:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ef;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ef;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/at$1;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/at$1;-><init>(Lcom/yandex/metrica/impl/at;Lcom/yandex/metrica/c$a;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ef;->a(Lcom/yandex/metrica/impl/ob/eh;)V

    return-void
.end method

.method protected a(J)Z
    .registers 6

    const-wide/16 v0, -0x2

    cmp-long v2, v0, p1

    if-nez v2, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->M()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/yandex/metrica/impl/at;->q:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->p:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/at;->v:Z

    .line 171
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->w()[Lcom/yandex/metrica/c$a$c;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->x()Lcom/yandex/metrica/impl/at$c;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/at;->t:Lcom/yandex/metrica/impl/at$c;

    .line 175
    iget-object v2, v2, Lcom/yandex/metrica/impl/at$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    return v1

    .line 179
    :cond_28
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->t:Lcom/yandex/metrica/impl/at$c;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/at;->a(Lcom/yandex/metrica/impl/at$c;[Lcom/yandex/metrica/c$a$c;)Lcom/yandex/metrica/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/at;->m:Lcom/yandex/metrica/c$a;

    .line 181
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->v()V

    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->t:Lcom/yandex/metrica/impl/at$c;

    iget-object v0, v0, Lcom/yandex/metrica/impl/at$c;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/yandex/metrica/impl/at;->q:Ljava/util/List;

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .registers 8

    .line 332
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->k()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/at;->k:Z

    .line 333
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->k()I

    move-result v0

    const/16 v3, 0x190

    if-ne v0, v3, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 334
    :goto_1a
    iget-boolean v3, p0, Lcom/yandex/metrica/impl/at;->k:Z

    if-nez v3, :cond_22

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_22
    if-eqz v1, :cond_62

    .line 337
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->m:Lcom/yandex/metrica/c$a;

    iget-object v0, v0, Lcom/yandex/metrica/c$a;->c:[Lcom/yandex/metrica/c$a$d;

    .line 339
    :goto_28
    array-length v1, v0

    if-ge v2, v1, :cond_53

    .line 340
    aget-object v1, v0, v2

    .line 341
    iget-object v3, p0, Lcom/yandex/metrica/impl/at;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 342
    iget-object v5, v1, Lcom/yandex/metrica/c$a$d;->c:Lcom/yandex/metrica/c$a$d$b;

    iget v5, v5, Lcom/yandex/metrica/c$a$d$b;->d:I

    invoke-static {v5}, Lcom/yandex/metrica/impl/ap;->a(I)Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v5

    .line 344
    iget-object v6, p0, Lcom/yandex/metrica/impl/at;->o:Lcom/yandex/metrica/impl/ob/bn;

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/bl;->a()I

    move-result v5

    iget-object v1, v1, Lcom/yandex/metrica/c$a$d;->d:[Lcom/yandex/metrica/c$a$d$a;

    array-length v1, v1

    invoke-virtual {v6, v3, v4, v5, v1}, Lcom/yandex/metrica/impl/ob/bn;->a(JII)V

    .line 345
    invoke-static {}, Lcom/yandex/metrica/impl/ap;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 348
    :cond_53
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->o:Lcom/yandex/metrica/impl/ob/bn;

    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->p:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bi;->c()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bn;->a([J)I

    .line 352
    :cond_62
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/at;->k:Z

    return v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/cq;
    .registers 3

    .line 357
    new-instance v0, Lcom/yandex/metrica/impl/ob/ct;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ct;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ct;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cq;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 6

    .line 190
    invoke-super {p0}, Lcom/yandex/metrica/impl/l;->e()V

    .line 191
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->m:Lcom/yandex/metrica/c$a;

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 192
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 193
    invoke-static {}, Lcom/yandex/metrica/impl/utils/m;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 191
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ap;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcom/yandex/metrica/c$a$f;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/c$a;->b:Lcom/yandex/metrica/c$a$f;

    .line 195
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->m:Lcom/yandex/metrica/c$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/d;)[B

    move-result-object v0

    .line 3199
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 3205
    :try_start_2a
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_51
    .catchall {:try_start_2a .. :try_end_2f} :catchall_4f

    const/4 v2, 0x0

    .line 3206
    :try_start_30
    array-length v4, v0

    invoke-virtual {v3, v0, v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 3207
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 3209
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/at;->a([B)V

    const-string v2, "gzip"

    .line 3210
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/at;->b(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_43} :catch_4d
    .catchall {:try_start_30 .. :try_end_43} :catchall_4a

    .line 3219
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 3220
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_4a
    move-exception v0

    move-object v2, v3

    goto :goto_60

    :catch_4d
    move-object v2, v3

    goto :goto_51

    :catchall_4f
    move-exception v0

    goto :goto_60

    .line 3214
    :catch_51
    :goto_51
    :try_start_51
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/at;->a([B)V

    const-string v0, "identity"

    .line 3215
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/at;->b(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_4f

    .line 3219
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 3220
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    return-void

    .line 3219
    :goto_60
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    .line 3220
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public f()V
    .registers 5

    .line 362
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/at;->k:Z

    if-eqz v0, :cond_2d

    .line 3382
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->p:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->p()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    .line 3383
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    .line 3384
    :goto_11
    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->t:Lcom/yandex/metrica/impl/at$c;

    iget-object v2, v2, Lcom/yandex/metrica/impl/at$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 3385
    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->t:Lcom/yandex/metrica/impl/at$c;

    iget-object v2, v2, Lcom/yandex/metrica/impl/at$c;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/c$a$d;

    const-string v3, "Event sent"

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/utils/j;->a(Lcom/yandex/metrica/c$a$d;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2d
    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/yandex/metrica/impl/at;->t:Lcom/yandex/metrica/impl/at$c;

    return-void
.end method

.method public o()Z
    .registers 6

    .line 370
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->r()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 371
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->q()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/2addr v0, v2

    const/16 v2, 0x190

    .line 372
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->k()I

    move-result v3

    if-eq v2, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    and-int/2addr v0, v1

    return v0
.end method

.method public p()J
    .registers 3

    .line 378
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->q()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_d

    sget-wide v0, Lcom/yandex/metrica/impl/ak$a;->a:J

    return-wide v0

    :cond_d
    sget-wide v0, Lcom/yandex/metrica/impl/ak$a;->b:J

    return-wide v0
.end method

.method v()V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "report"

    .line 2260
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2263
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    .line 2264
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2265
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    .line 2266
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2267
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics_sdk_version"

    .line 2268
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2269
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_analytics_sdk_version"

    .line 2270
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2271
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->x()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version_name"

    .line 2272
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2273
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->z()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_build_number"

    .line 2274
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2275
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "os_version"

    .line 2276
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2277
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->r()I

    move-result v1

    if-lez v1, :cond_bd

    .line 2278
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "os_api_level"

    .line 2279
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2281
    :cond_bd
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 2282
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics_sdk_build_number"

    .line 2283
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2285
    :cond_d4
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 2286
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics_sdk_build_type"

    .line 2287
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2289
    :cond_eb
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->N()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_102

    .line 2290
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->N()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_debuggable"

    .line 2291
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2293
    :cond_102
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->w()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    .line 2294
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2295
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->F()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_rooted"

    .line 2296
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2297
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->c:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ba;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_framework"

    .line 2298
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2301
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    .line 2303
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->j()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_14e

    const-string v1, "api_key_128"

    goto :goto_150

    :cond_14e
    const-string v1, "api_key"

    .line 2306
    :goto_150
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->y()Ljava/lang/String;

    move-result-object v2

    .line 2301
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2307
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->p:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/t;->l()Lcom/yandex/metrica/impl/ob/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2308
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_platform"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2309
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol_version"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2310
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2311
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2312
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_width"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2313
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_height"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2314
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_dpi"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2315
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->v()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scalefactor"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2316
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->G()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2317
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android_id"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2318
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->p:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ba;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2319
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1fb

    const-string v2, "adv_id"

    .line 2320
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2322
    :cond_1fb
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ba;->y()Ljava/lang/String;

    move-result-object v1

    .line 2323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20c

    const-string v2, "clids_set"

    .line 2324
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    :cond_20c
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/at;->a(Ljava/lang/String;)V

    return-void
.end method

.method w()[Lcom/yandex/metrica/c$a$c;
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->p:Lcom/yandex/metrica/impl/ob/t;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/t;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ap;->a(Landroid/content/Context;)[Lcom/yandex/metrica/c$a$c;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 228
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 229
    iget v4, p0, Lcom/yandex/metrica/impl/at;->r:I

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->b(Lcom/yandex/metrica/impl/ob/d;)I

    move-result v3

    add-int/2addr v4, v3

    iput v4, p0, Lcom/yandex/metrica/impl/at;->r:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v0
.end method

.method protected x()Lcom/yandex/metrica/impl/at$c;
    .registers 13

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 398
    :try_start_10
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/at;->z()Landroid/database/Cursor;

    move-result-object v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_a7
    .catchall {:try_start_10 .. :try_end_14} :catchall_a2

    .line 400
    :cond_14
    :goto_14
    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_99

    .line 401
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 402
    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/utils/e;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-string v6, "id"

    .line 403
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "type"

    .line 404
    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/yandex/metrica/impl/ob/bl;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v8

    .line 407
    invoke-virtual {p0, v6, v7}, Lcom/yandex/metrica/impl/at;->a(J)Z

    move-result v9

    if-nez v9, :cond_14

    .line 412
    invoke-static {v5}, Lcom/yandex/metrica/impl/ap;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/c$a$f;

    move-result-object v5

    .line 413
    invoke-static {v8}, Lcom/yandex/metrica/impl/ap;->a(Lcom/yandex/metrica/impl/ob/bl;)I

    move-result v8

    .line 416
    iget-object v9, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    .line 417
    invoke-virtual {v9}, Lcom/yandex/metrica/impl/ba;->w()Ljava/lang/String;

    move-result-object v9

    .line 416
    invoke-static {v9, v8, v5}, Lcom/yandex/metrica/impl/ap;->a(Ljava/lang/String;ILcom/yandex/metrica/c$a$f;)Lcom/yandex/metrica/c$a$d$b;

    move-result-object v5

    .line 421
    iget v8, p0, Lcom/yandex/metrica/impl/at;->r:I

    const/4 v9, 0x1

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v9, v10, v11}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/yandex/metrica/impl/at;->r:I

    const/4 v9, 0x2

    .line 422
    invoke-static {v9, v5}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/yandex/metrica/impl/at;->r:I

    const v9, 0x3d400

    if-ge v8, v9, :cond_99

    .line 428
    invoke-virtual {p0, v6, v7, v5}, Lcom/yandex/metrica/impl/at;->a(JLcom/yandex/metrica/c$a$d$b;)Lcom/yandex/metrica/impl/at$b;

    move-result-object v5

    if-eqz v5, :cond_14

    if-nez v3, :cond_75

    .line 431
    iget-object v3, v5, Lcom/yandex/metrica/impl/at$b;->b:Lcom/yandex/metrica/impl/a$a;

    goto :goto_7d

    .line 432
    :cond_75
    iget-object v8, v5, Lcom/yandex/metrica/impl/at$b;->b:Lcom/yandex/metrica/impl/a$a;

    invoke-virtual {v3, v8}, Lcom/yandex/metrica/impl/a$a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 435
    :goto_7d
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v6, v5, Lcom/yandex/metrica/impl/at$b;->a:Lcom/yandex/metrica/c$a$d;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_89} :catch_a0
    .catchall {:try_start_14 .. :try_end_89} :catchall_9d

    .line 438
    :try_start_89
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, v5, Lcom/yandex/metrica/impl/at$b;->b:Lcom/yandex/metrica/impl/a$a;

    iget-object v7, v7, Lcom/yandex/metrica/impl/a$a;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_92} :catch_93
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_92} :catch_a0
    .catchall {:try_start_89 .. :try_end_92} :catchall_9d

    move-object v2, v6

    .line 442
    :catch_93
    :try_start_93
    iget-boolean v5, v5, Lcom/yandex/metrica/impl/at$b;->c:Z
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_95} :catch_a0
    .catchall {:try_start_93 .. :try_end_95} :catchall_9d

    if-nez v5, :cond_99

    goto/16 :goto_14

    .line 450
    :cond_99
    invoke-static {v4}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    goto :goto_aa

    :catchall_9d
    move-exception v0

    move-object v3, v4

    goto :goto_a3

    :catch_a0
    move-object v3, v4

    goto :goto_a7

    :catchall_a2
    move-exception v0

    :goto_a3
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    throw v0

    :catch_a7
    :goto_a7
    invoke-static {v3}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    .line 453
    :goto_aa
    new-instance v3, Lcom/yandex/metrica/impl/at$c;

    invoke-direct {v3, v0, v1, v2}, Lcom/yandex/metrica/impl/at$c;-><init>(Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;)V

    return-object v3
.end method

.method protected y()Ljava/lang/String;
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->n:Lcom/yandex/metrica/impl/ba;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ba;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected z()Landroid/database/Cursor;
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->o:Lcom/yandex/metrica/impl/ob/bn;

    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bn;->a(Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
