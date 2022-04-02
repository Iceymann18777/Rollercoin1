.class public Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;
.super Ljava/lang/Object;
.source "AvidJSONUtil.java"


# static fields
.field private static KEYS:[Ljava/lang/String; = null

.field public static final KEY_CHILD_VIEWS:Ljava/lang/String; = "childViews"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_IS_FRIENDLY_OBSTRUCTION_FOR:Ljava/lang/String; = "isFriendlyObstructionFor"

.field public static final KEY_ROOT_VIEW:Ljava/lang/String; = "rootView"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final KEY_X:Ljava/lang/String; = "x"

.field public static final KEY_Y:Ljava/lang/String; = "y"

.field static density:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "x"

    const-string v1, "y"

    const-string v2, "width"

    const-string v3, "height"

    .line 26
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->KEYS:[Ljava/lang/String;

    .line 28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->density:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAvidId(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "id"

    .line 72
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception p0

    const-string p1, "Error with setting avid id"

    .line 75
    invoke-static {p1, p0}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_c
    return-void
.end method

.method public static addChildState(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "childViews"

    .line 94
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_10

    .line 96
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 97
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_10
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    .line 101
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_18
    return-void
.end method

.method public static addFriendlyObstruction(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_19
    :try_start_19
    const-string p1, "isFriendlyObstructionFor"

    .line 85
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception p0

    const-string p1, "Error with setting friendly obstruction"

    .line 88
    invoke-static {p1, p0}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_25
    return-void
.end method

.method private static compareChildren(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const-string v0, "childViews"

    .line 175
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 176
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 177
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x1

    if-nez p0, :cond_16

    return v0

    :cond_16
    const/4 v2, 0x0

    .line 183
    :goto_17
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 184
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 185
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 186
    invoke-static {v3, v4}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->equalStates(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_2c

    return v1

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2f
    return v0
.end method

.method private static compareFriendlySessionIds(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 7

    const-string v0, "isFriendlyObstructionFor"

    .line 156
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 158
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x1

    if-nez p0, :cond_16

    return v0

    :cond_16
    const/4 v2, 0x0

    .line 164
    :goto_17
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_31

    const-string v3, ""

    .line 165
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v1

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_31
    return v0
.end method

.method private static compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-nez p0, :cond_b

    if-nez p1, :cond_f

    :cond_b
    if-eqz p0, :cond_10

    if-nez p1, :cond_10

    :cond_f
    return v1

    .line 201
    :cond_10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ne p0, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private static compareRequiredValues(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 11

    .line 143
    sget-object v0, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->KEYS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 144
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v4, v5, v7

    if-eqz v4, :cond_16

    return v2

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method private static compareSessionId(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 4

    const-string v0, "id"

    const-string v1, ""

    .line 152
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalStates(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 136
    :cond_4
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareRequiredValues(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 137
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareSessionId(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 138
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareFriendlySessionIds(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 139
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareChildren(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public static fixStateFrame(Lorg/json/JSONObject;)V
    .registers 11

    const-string v0, "childViews"

    .line 106
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 112
    :cond_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    const-string v5, "height"

    const-string v6, "width"

    if-ge v2, v1, :cond_3d

    .line 114
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3a

    const-string v8, "x"

    .line 116
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "y"

    .line 117
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 118
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 119
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v8, v6

    .line 120
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v9, v5

    .line 121
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 125
    :cond_3d
    :try_start_3d
    invoke-virtual {p0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {p0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    .line 128
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_48
    return-void
.end method

.method public static getEmptyTreeJSONObject()Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    .line 37
    invoke-static {v0, v0, v0, v0}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getViewState(IIII)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/integralads/avid/library/mopub/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getTreeJSONObject(Lorg/json/JSONObject;D)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getTreeJSONObject(Lorg/json/JSONObject;D)Lorg/json/JSONObject;
    .registers 5

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "timestamp"

    .line 44
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "rootView"

    .line 45
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p0

    const-string p1, "Error with creating treeJSONObject"

    .line 48
    invoke-static {p1, p0}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_16
    return-object v0
.end method

.method public static getViewState(IIII)Lorg/json/JSONObject;
    .registers 8

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "x"

    .line 56
    invoke-static {p0}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->pxToDp(I)F

    move-result p0

    float-to-double v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "y"

    .line 57
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->pxToDp(I)F

    move-result p1

    float-to-double v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "width"

    .line 58
    invoke-static {p2}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->pxToDp(I)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "height"

    .line 59
    invoke-static {p3}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->pxToDp(I)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception p0

    const-string p1, "Error with creating viewStateObject"

    .line 61
    invoke-static {p1, p0}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_34
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    if-eqz p0, :cond_e

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->density:F

    :cond_e
    return-void
.end method

.method static pxToDp(I)F
    .registers 2

    int-to-float p0, p0

    .line 67
    sget v0, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->density:F

    div-float/2addr p0, v0

    return p0
.end method
