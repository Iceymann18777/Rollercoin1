.class Lcom/moat/analytics/mobile/mpub/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/m;->a:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/m;->b:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/m;->c:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/m;->d:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/m;->e:I

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    const-string v0, "es"

    const-string v1, "in"

    if-nez p1, :cond_7

    return-void

    :cond_7
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sa"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "422d7e65812d34458dfd0c5f14e8141470b6e2ae"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "8f1d08a2d6496191a5ebae8f0590f513e2619489"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    if-nez v3, :cond_2a

    if-eqz v4, :cond_41

    :cond_2a
    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/mpub/m;->a(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_41

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/mpub/m;->b(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_41

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/m;->a:Z

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/mpub/m;->b:Z

    iput-boolean v4, p0, Lcom/moat/analytics/mobile/mpub/m;->c:Z

    if-eqz v4, :cond_41

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/m;->b:Z

    :cond_41
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_55

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_55

    iput p1, p0, Lcom/moat/analytics/mobile/mpub/m;->d:I

    :cond_55
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/moat/analytics/mobile/mpub/m;->e:I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_61} :catch_62

    goto :goto_6f

    :catch_62
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/m;->a:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/m;->b:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/m;->d:I

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 8

    const-string v0, "ob"

    const/16 v1, 0x10

    const/4 v2, 0x1

    :try_start_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_28

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_29

    if-ne v4, v5, :cond_25

    return v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_28
    return v3

    :catch_29
    return v2
.end method

.method private b(Lorg/json/JSONObject;)Z
    .registers 7

    const-string v0, "ap"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->c()Lcom/moat/analytics/mobile/mpub/s$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/mpub/s$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_2f

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_2b

    if-eqz v4, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :catch_2b
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :cond_2f
    return v1
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/m;->b:Z

    return v0
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/m;->c:Z

    return v0
.end method

.method c()I
    .registers 2

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/m;->d:I

    return v0
.end method

.method d()I
    .registers 2

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/m;->e:I

    return v0
.end method

.method e()Lcom/moat/analytics/mobile/mpub/w$d;
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/m;->a:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/moat/analytics/mobile/mpub/w$d;->b:Lcom/moat/analytics/mobile/mpub/w$d;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/moat/analytics/mobile/mpub/w$d;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    :goto_9
    return-object v0
.end method
