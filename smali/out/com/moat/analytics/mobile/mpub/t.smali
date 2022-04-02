.class Lcom/moat/analytics/mobile/mpub/t;
.super Lcom/moat/analytics/mobile/mpub/b;

# interfaces
.implements Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;


# instance fields
.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker$MoatUserInteractionType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/moat/analytics/mobile/mpub/b;-><init>(Landroid/view/View;ZZ)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/t;->h:Ljava/util/Set;

    const/4 v0, 0x3

    const-string v1, "NativeDisplayTracker"

    const-string v2, "Initializing."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/t;->g:Ljava/util/Map;

    const-string v2, "[ERROR] "

    const-string v3, "NativeDisplayTracker initialization not successful, "

    if-nez p1, :cond_39

    const-string p1, "Target view is null"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, v1, p0, p2}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/moat/analytics/mobile/mpub/n;

    invoke-direct {p2, p1}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    :goto_35
    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/t;->a:Lcom/moat/analytics/mobile/mpub/n;

    goto/16 :goto_be

    :cond_39
    if-eqz p2, :cond_a3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_a3

    :cond_42
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/k;->getInstance()Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/mpub/k;

    iget-object p1, p1, Lcom/moat/analytics/mobile/mpub/k;->c:Lcom/moat/analytics/mobile/mpub/g;

    if-nez p1, :cond_66

    const-string p1, "prepareNativeDisplayTracking was not called successfully"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, v1, p0, p2}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/moat/analytics/mobile/mpub/n;

    invoke-direct {p2, p1}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :cond_66
    iget-object v0, p1, Lcom/moat/analytics/mobile/mpub/g;->b:Lcom/moat/analytics/mobile/mpub/j;

    invoke-super {p0, v0}, Lcom/moat/analytics/mobile/mpub/b;->a(Lcom/moat/analytics/mobile/mpub/j;)V

    :try_start_6b
    iget-object p1, p1, Lcom/moat/analytics/mobile/mpub/g;->a:Landroid/webkit/WebView;

    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/mpub/b;->a(Landroid/webkit/WebView;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/t;->i()V

    const-string p1, "[SUCCESS] "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " created for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", with adIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catch Lcom/moat/analytics/mobile/mpub/n; {:try_start_6b .. :try_end_a0} :catch_a1

    goto :goto_be

    :catch_a1
    move-exception p1

    goto :goto_bc

    :cond_a3
    :goto_a3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "AdIds is null or empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, v1, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/n;

    invoke-direct {p1, p2}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    :goto_bc
    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/t;->a:Lcom/moat/analytics/mobile/mpub/n;

    :goto_be
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moatClientLevel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2c
    :goto_2c
    if-ge v1, v3, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moatClientSlicer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4f
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_57
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :cond_73
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/t;->c:Lcom/moat/analytics/mobile/mpub/j;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/t;->c:Lcom/moat/analytics/mobile/mpub/j;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/t;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/mpub/j;->a(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private j()Ljava/lang/String;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/t;->g:Ljava/util/Map;

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/t;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "NativeDisplayTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsed ad ids = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"adIds\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \"adKey\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/t;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"adSize\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/t;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_50

    :catch_4a
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    const-string v0, ""

    :goto_50
    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-super {p0}, Lcom/moat/analytics/mobile/mpub/b;->f()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/z;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "width"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    const-string v0, "NativeDisplayTracker"

    return-object v0
.end method

.method public reportUserInteractionEvent(Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker$MoatUserInteractionType;)V
    .registers 6

    const-string v0, "NativeDisplayTracker"

    const/4 v1, 0x3

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportUserInteractionEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker$MoatUserInteractionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/t;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/t;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "adKey"

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/t;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "event"

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker$MoatUserInteractionType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/moat/analytics/mobile/mpub/t;->c:Lcom/moat/analytics/mobile/mpub/j;

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/moat/analytics/mobile/mpub/t;->c:Lcom/moat/analytics/mobile/mpub/j;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/moat/analytics/mobile/mpub/j;->b(Ljava/lang/String;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_4e} :catch_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_4f

    goto :goto_5b

    :catch_4f
    move-exception p1

    goto :goto_58

    :catch_51
    move-exception p1

    const/4 v1, 0x2

    const-string v2, "Got JSON exception"

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_58
    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :cond_5b
    :goto_5b
    return-void
.end method
