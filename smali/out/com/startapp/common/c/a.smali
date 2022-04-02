.class public Lcom/startapp/common/c/a;
.super Ljava/io/InputStream;
.source "StartAppSDK"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/io/InputStream;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    .line 534
    const-class v1, Ljava/lang/Integer;

    const-string v2, "int[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    const-string v2, "long[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    const-string v2, "double[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    const-string v2, "float[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "bool[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    const-string v2, "char[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    const-string v2, "byte[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Void;

    const-string v2, "void[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    const-string v2, "short[]"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/startapp/common/c/a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/startapp/common/c/a;->b:Ljava/io/InputStream;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 301
    invoke-static {p2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5f

    .line 443
    :cond_b
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 444
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 445
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5f

    .line 446
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 447
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5f

    .line 449
    :cond_41
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 451
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_5f
    :goto_5f
    return-object p0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/common/c/a;->b(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/reflect/Field;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_b

    .line 339
    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/startapp/common/c/a;->a(Lorg/json/JSONObject;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 11

    .line 307
    invoke-static {p2}, Lcom/startapp/common/c/c;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 309
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    .line 310
    sget-object v1, Lcom/startapp/common/c/a;->a:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const-string v1, "TYPE"

    .line 312
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 313
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v0, :cond_71

    .line 315
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 316
    const-class v5, Ljava/lang/String;

    .line 317
    const-class v6, Ljava/lang/Character;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 318
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    :cond_41
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v5, v7, v2

    .line 320
    invoke-virtual {p2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 322
    const-class v7, Ljava/lang/Character;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    new-array v6, v6, [Ljava/lang/Object;

    .line 323
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_6b

    :cond_63
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 325
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 327
    :goto_6b
    invoke-static {v1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_71
    return-object v1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 461
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_77

    .line 463
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 464
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_77

    .line 465
    invoke-static {p1}, Lcom/startapp/common/c/c;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_77

    .line 469
    :cond_2c
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 470
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_77

    .line 471
    :cond_3f
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 472
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_77

    .line 473
    :cond_52
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 474
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_77

    .line 475
    :cond_65
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    .line 476
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :cond_77
    :goto_77
    return-object p2
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    const-string v4, "JSONInputStream"

    if-eqz p1, :cond_17

    .line 505
    :try_start_c
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_21

    .line 509
    :cond_17
    new-instance v5, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_43

    .line 519
    :goto_21
    :try_start_21
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 520
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_30

    goto :goto_21

    .line 527
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_30
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    .line 523
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Can\'t Can\'t read input stream [%s]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 524
    throw p0

    :catch_43
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    .line 512
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Can\'t create BufferedReader [%s]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 513
    goto :goto_57

    :goto_56
    throw p0

    :goto_57
    goto :goto_56
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/util/Iterator;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Iterator<",
            "TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 361
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 362
    :goto_5
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 363
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 366
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 367
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v0

    .line 369
    :goto_28
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 370
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/startapp/common/c/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    .line 373
    :cond_36
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_68

    .line 376
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_60

    .line 380
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 381
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/startapp/common/c/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 383
    :cond_58
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 386
    :cond_60
    invoke-direct {p0, p3, v2}, Lcom/startapp/common/c/a;->a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 390
    :cond_68
    invoke-direct {p0, p2, v2}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_70
    return-object p4
.end method

.method private a(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/json/JSONArray;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Field;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set;"
        }
    .end annotation

    .line 414
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    .line 415
    :goto_6
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 416
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/startapp/common/c/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    .line 417
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-object p2
.end method

.method private a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 400
    :goto_6
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 401
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 403
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 405
    :cond_1a
    invoke-direct {p0, p1, v2}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    return-object v0
.end method

.method private a(Ljava/lang/Class;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/reflect/Field;",
            ")[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 288
    array-length v0, p2

    .line 289
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 290
    array-length v1, p1

    add-int v2, v0, v1

    .line 291
    new-array v2, v2, [Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    .line 292
    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v9, "JSONInputStream"

    const-string v1, "Problem instantiating object class "

    .line 97
    iget-object v2, v8, Lcom/startapp/common/c/a;->b:Ljava/io/InputStream;

    if-nez v2, :cond_19

    iget-object v2, v8, Lcom/startapp/common/c/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_11

    goto :goto_19

    .line 98
    :cond_11
    new-instance v0, Lcom/startapp/common/c/d;

    const-string v1, "Can\'t read object, the input is null."

    invoke-direct {v0, v1}, Lcom/startapp/common/c/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_19
    :goto_19
    iget-object v2, v8, Lcom/startapp/common/c/a;->c:Ljava/lang/String;

    const/4 v10, 0x0

    if-nez v2, :cond_30

    .line 105
    :try_start_1e
    iget-object v2, v8, Lcom/startapp/common/c/a;->b:Ljava/io/InputStream;

    invoke-static {v2, v10}, Lcom/startapp/common/c/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/startapp/common/c/a;->c:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_30

    :catch_27
    move-exception v0

    .line 107
    new-instance v1, Lcom/startapp/common/c/d;

    const-string v2, "Can\'t read input stream."

    invoke-direct {v1, v2, v0}, Lcom/startapp/common/c/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_30
    :goto_30
    if-nez p2, :cond_44

    .line 112
    :try_start_32
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v8, Lcom/startapp/common/c/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_39} :catch_3b

    move-object v11, v2

    goto :goto_46

    :catch_3b
    move-exception v0

    .line 114
    new-instance v1, Lcom/startapp/common/c/d;

    const-string v2, "Can\'t deserialize the object. Failed to create JSON object."

    invoke-direct {v1, v2, v0}, Lcom/startapp/common/c/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_44
    move-object/from16 v11, p2

    .line 123
    :goto_46
    :try_start_46
    const-class v2, Lcom/startapp/common/c/e;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/startapp/common/c/e;

    .line 127
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_313

    const/16 v4, 0x9

    const-string v12, "."

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lt v3, v4, :cond_79

    :try_start_59
    const-class v3, Ljava/net/HttpCookie;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 129
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    aget-object v1, v1, v15

    .line 130
    invoke-virtual {v1, v14}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v13, [Ljava/lang/Object;

    const-string v4, "name"

    aput-object v4, v3, v15

    const-string v4, "value"

    aput-object v4, v3, v14

    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_df

    .line 132
    :cond_79
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 133
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 135
    :cond_84
    const-class v3, Lcom/startapp/common/c/e;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_d0

    invoke-interface {v2}, Lcom/startapp/common/c/e;->c()Z

    move-result v3

    if-eqz v3, :cond_93

    goto :goto_d0

    .line 141
    :cond_93
    invoke-interface {v2}, Lcom/startapp/common/c/e;->c()Z

    move-result v3
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_97} :catch_313

    if-nez v3, :cond_ce

    .line 143
    :try_start_99
    invoke-interface {v2}, Lcom/startapp/common/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-interface {v2}, Lcom/startapp/common/c/e;->b()Ljava/lang/String;

    move-result-object v2

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 148
    invoke-direct {v8, v0, v11}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0
    :try_end_bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_99 .. :try_end_bf} :catch_c7
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_bf} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_bf} :catch_313

    return-object v0

    :catch_c0
    move-exception v0

    .line 152
    :try_start_c1
    new-instance v2, Lcom/startapp/common/c/d;

    invoke-direct {v2, v1, v0}, Lcom/startapp/common/c/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_c7
    move-exception v0

    .line 150
    new-instance v2, Lcom/startapp/common/c/d;

    invoke-direct {v2, v1, v0}, Lcom/startapp/common/c/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_ce
    move-object v7, v10

    goto :goto_e0

    :cond_d0
    :goto_d0
    new-array v1, v15, [Ljava/lang/Class;

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v14}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v15, [Ljava/lang/Object;

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_df} :catch_313

    :goto_df
    move-object v7, v1

    .line 162
    :goto_e0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v2, :cond_f0

    .line 165
    invoke-interface {v2}, Lcom/startapp/common/c/e;->c()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 166
    invoke-direct {v8, v0, v1}, Lcom/startapp/common/c/a;->a(Ljava/lang/Class;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v1

    :cond_f0
    move-object v6, v1

    .line 169
    array-length v5, v6

    const/4 v4, 0x0

    :goto_f3
    if-ge v4, v5, :cond_311

    aget-object v0, v6, v4

    .line 170
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 185
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_2fa

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_109

    goto/16 :goto_2fa

    .line 189
    :cond_109
    invoke-static {v0}, Lcom/startapp/common/c/c;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 191
    :try_start_10d
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2ab

    .line 193
    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_14e

    .line 197
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    aget-object v1, v1, v15

    .line 198
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    const-class v13, Lcom/startapp/common/c/f;

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14e

    .line 200
    check-cast v1, Lcom/startapp/common/c/f;

    .line 201
    invoke-interface {v1}, Lcom/startapp/common/c/f;->b()Ljava/lang/Class;

    move-result-object v2

    .line 202
    invoke-interface {v1}, Lcom/startapp/common/c/f;->d()Ljava/lang/Class;

    move-result-object v13

    .line 203
    invoke-interface {v1}, Lcom/startapp/common/c/f;->c()Ljava/lang/Class;

    move-result-object v16

    .line 204
    invoke-interface {v1}, Lcom/startapp/common/c/f;->a()Z

    move-result v17

    .line 205
    invoke-interface {v1}, Lcom/startapp/common/c/f;->e()Ljava/lang/Class;

    move-result-object v1

    const/16 v18, 0x1

    move-object/from16 v19, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v19

    goto :goto_157

    :cond_14e
    move-object v1, v10

    move-object v2, v1

    move-object v13, v2

    move-object/from16 v16, v13

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 210
    :goto_157
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    const-class v14, Lcom/startapp/common/c/e;

    invoke-virtual {v15, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_1a2

    .line 211
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/startapp/common/c/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/startapp/common/c/e;

    .line 212
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 213
    invoke-interface {v1}, Lcom/startapp/common/c/e;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-interface {v1}, Lcom/startapp/common/c/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 216
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2fa

    :cond_1a2
    if-eqz v17, :cond_1b5

    .line 221
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2fa

    :cond_1b5
    if-eqz v18, :cond_242

    .line 224
    const-class v14, Ljava/util/Map;

    invoke-virtual {v14, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_1c7

    const-class v14, Ljava/util/Collection;

    .line 225
    invoke-virtual {v14, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_242

    .line 227
    :cond_1c7
    const-class v14, Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f5

    .line 228
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 230
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_1d7} :catch_2d9
    .catchall {:try_start_10d .. :try_end_1d7} :catchall_2d0

    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v13

    move-object v13, v3

    move-object/from16 v3, p1

    move/from16 v17, v4

    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object v5, v0

    move-object/from16 v18, v6

    move-object v6, v14

    move-object v14, v7

    move-object v7, v15

    .line 232
    :try_start_1ec
    invoke-direct/range {v1 .. v7}, Lcom/startapp/common/c/a;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/util/Iterator;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_301

    :cond_1f5
    move-object/from16 p1, v1

    move-object v13, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object v14, v7

    .line 233
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_216

    .line 234
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object/from16 v3, p1

    .line 235
    invoke-direct {v8, v3, v0, v1}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_301

    :cond_216
    move-object/from16 v3, p1

    .line 237
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22d

    .line 238
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 239
    invoke-direct {v8, v3, v1}, Lcom/startapp/common/c/a;->a(Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_301

    .line 240
    :cond_22d
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_301

    .line 241
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 242
    invoke-direct {v8, v3, v0, v1}, Lcom/startapp/common/c/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_301

    :cond_242
    move-object v13, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object v14, v7

    .line 246
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_263

    .line 247
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Lcom/startapp/common/c/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_301

    .line 251
    :cond_263
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_27e

    .line 253
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v11, v0, v1, v2}, Lcom/startapp/common/c/a;->a(Lorg/json/JSONObject;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_301

    .line 256
    :cond_27e
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_291

    .line 257
    invoke-direct {v8, v11, v2, v0}, Lcom/startapp/common/c/a;->a(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_301

    .line 261
    :cond_291
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/startapp/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 264
    invoke-virtual {v0, v14, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_301

    .line 266
    :cond_2a7
    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_301

    :cond_2ab
    move-object v13, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object v14, v7

    .line 271
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_301

    const/4 v0, 0x4

    const-string v1, "Field [%s] doesn\'t exist. Keeping default value."

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v3, v2

    .line 273
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v9, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_2cd} :catch_2ce
    .catchall {:try_start_1ec .. :try_end_2cd} :catchall_2d0

    goto :goto_301

    :catch_2ce
    move-exception v0

    goto :goto_2e2

    :catchall_2d0
    move-exception v0

    .line 280
    new-instance v1, Lcom/startapp/common/c/d;

    const-string v2, "Unknown error occurred "

    invoke-direct {v1, v2, v0}, Lcom/startapp/common/c/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2d9
    move-exception v0

    move-object v13, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object v14, v7

    :goto_2e2
    const/4 v1, 0x6

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "Failed to get field [%s] %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_304

    :cond_2fa
    :goto_2fa
    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v18, v6

    move-object v14, v7

    :cond_301
    :goto_301
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_304
    add-int/lit8 v0, v17, 0x1

    move v4, v0

    move-object v7, v14

    move/from16 v5, v16

    move-object/from16 v6, v18

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_f3

    :cond_311
    move-object v14, v7

    return-object v14

    :catch_313
    move-exception v0

    .line 158
    new-instance v1, Lcom/startapp/common/c/d;

    const-string v2, "Can\'t deserialize the object. Failed to instantiate object."

    invoke-direct {v1, v2, v0}, Lcom/startapp/common/c/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31d

    :goto_31c
    throw v1

    :goto_31d
    goto :goto_31c
.end method

.method private b(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Field;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 426
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 427
    :goto_6
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 428
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 430
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 432
    :cond_1a
    invoke-direct {p0, p1, v1}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    return-object p2
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/reflect/Field;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Field;",
            ")[TT;"
        }
    .end annotation

    .line 347
    invoke-static {p3}, Lcom/startapp/common/c/c;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    .line 349
    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p3, :cond_21

    .line 351
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 352
    invoke-direct {p0, p2, v2}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    .line 353
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 355
    :cond_21
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/startapp/common/c/a;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Lcom/startapp/common/c/d; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_22

    :catch_5
    move-exception p2

    const/4 v0, 0x6

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while trying to parse object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JSONInputStream"

    invoke-static {v1, v0, p1, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_22
    return-object p1
.end method

.method public close()V
    .registers 2

    .line 66
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 67
    iget-object v0, p0, Lcom/startapp/common/c/a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a
    return-void
.end method

.method public final read()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
