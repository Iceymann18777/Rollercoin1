.class Lcom/moat/analytics/mobile/mpub/n;
.super Ljava/lang/Exception;


# static fields
.field private static final a:Ljava/lang/Long;

.field private static b:Ljava/lang/Long;

.field private static c:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/mpub/n;->a:Ljava/lang/Long;

    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/mpub/n;->c:Ljava/lang/Exception;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    instance-of v0, p1, Lcom/moat/analytics/mobile/mpub/n;

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed unexpectedly"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a()V
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/n;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->b(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/moat/analytics/mobile/mpub/n;->c:Ljava/lang/Exception;

    :cond_a
    return-void
.end method

.method static a(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v0

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/w;->b:Z

    if-eqz v0, :cond_12

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MoatException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_12
    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/n;->b(Ljava/lang/Exception;)V

    :goto_15
    return-void
.end method

.method private static b(Ljava/lang/Exception;)V
    .registers 14

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v1

    iget-object v1, v1, Lcom/moat/analytics/mobile/mpub/w;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    sget-object v2, Lcom/moat/analytics/mobile/mpub/w$d;->b:Lcom/moat/analytics/mobile/mpub/w$d;

    if-ne v1, v2, :cond_1ae

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v1

    iget v1, v1, Lcom/moat/analytics/mobile/mpub/w;->e:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_1b0

    if-nez v1, :cond_15

    return-void

    :cond_15
    const/16 v2, 0x64

    if-ge v1, v2, :cond_29

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    :try_start_20
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_29

    return-void

    :cond_29
    const-string v2, "https://px.moatads.com/pixel.gif?e=0&i=MOATSDK1&ac=1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&zt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v4, p0, Lcom/moat/analytics/mobile/mpub/n;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&zr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_61} :catch_1b0

    :try_start_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&zm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6f} :catch_b4

    const-string v4, "UTF-8"

    if-nez v2, :cond_76

    :try_start_73
    const-string v2, "null"

    goto :goto_86

    :cond_76
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&k="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    const-string p0, "MPUB"
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b6} :catch_e8

    :try_start_b6
    const-string v1, "&zMoatMMAKv=422d7e65812d34458dfd0c5f14e8141470b6e2ae"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.6.6"
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bd} :catch_e6

    :try_start_bd
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->c()Lcom/moat/analytics/mobile/mpub/s$a;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&zMoatMMAKan="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/mpub/s$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/mpub/s$a;->b()Ljava/lang/String;

    move-result-object v2
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_dd} :catch_e4

    :try_start_dd
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e3} :catch_eb

    goto :goto_eb

    :catch_e4
    move-object v2, v0

    goto :goto_eb

    :catch_e6
    move-object v1, v0

    goto :goto_ea

    :catch_e8
    move-object p0, v0

    move-object v1, p0

    :goto_ea
    move-object v2, v1

    :catch_eb
    :goto_eb
    :try_start_eb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&d=Android:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":-"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&bo="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&bd="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&de="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%.0f"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    const-wide/high16 v11, 0x4028000000000000L    # 12.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&cs=0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/moat/analytics/mobile/mpub/n;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1a4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/moat/analytics/mobile/mpub/n;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget-object v2, Lcom/moat/analytics/mobile/mpub/n;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-lez v2, :cond_1b0

    :cond_1a4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/q;->b(Ljava/lang/String;)V

    sput-object p0, Lcom/moat/analytics/mobile/mpub/n;->b:Ljava/lang/Long;

    goto :goto_1b0

    :cond_1ae
    sput-object p0, Lcom/moat/analytics/mobile/mpub/n;->c:Ljava/lang/Exception;
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_1b0} :catch_1b0

    :catch_1b0
    :cond_1b0
    :goto_1b0
    return-void
.end method
