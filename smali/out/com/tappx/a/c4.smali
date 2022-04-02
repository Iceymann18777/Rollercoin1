.class public Lcom/tappx/a/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/c4$h;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/b4;

.field private final b:Lcom/tappx/a/k4;

.field private c:Lcom/tappx/a/c4$h;

.field private d:Lcom/tappx/a/q4;

.field private e:Lcom/tappx/a/g4;

.field private f:Z

.field private g:Z

.field private final h:Landroid/webkit/WebViewClient;


# direct methods
.method constructor <init>(Lcom/tappx/a/b4;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/k4;

    invoke-direct {v0}, Lcom/tappx/a/k4;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/c4;-><init>(Lcom/tappx/a/b4;Lcom/tappx/a/k4;)V

    return-void
.end method

.method constructor <init>(Lcom/tappx/a/b4;Lcom/tappx/a/k4;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/tappx/a/c4$e;

    invoke-direct {v0, p0}, Lcom/tappx/a/c4$e;-><init>(Lcom/tappx/a/c4;)V

    iput-object v0, p0, Lcom/tappx/a/c4;->h:Landroid/webkit/WebViewClient;

    .line 140
    iput-object p1, p0, Lcom/tappx/a/c4;->a:Lcom/tappx/a/b4;

    .line 141
    iput-object p2, p0, Lcom/tappx/a/c4;->b:Lcom/tappx/a/k4;

    return-void
.end method

.method private a(III)I
    .registers 5

    if-lt p1, p2, :cond_5

    if-gt p1, p3, :cond_5

    return p1

    .line 256
    :cond_5
    new-instance p2, Lcom/tappx/a/f4;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "param out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic a(Lcom/tappx/a/c4;)Lcom/tappx/a/c4$h;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/tappx/a/p3$d;)Lcom/tappx/a/p3$d;
    .registers 5

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    :cond_7
    const-string p2, "top-left"

    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 241
    sget-object p1, Lcom/tappx/a/p3$d;->b:Lcom/tappx/a/p3$d;

    return-object p1

    :cond_12
    const-string p2, "top-right"

    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 243
    sget-object p1, Lcom/tappx/a/p3$d;->d:Lcom/tappx/a/p3$d;

    return-object p1

    :cond_1d
    const-string p2, "center"

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 245
    sget-object p1, Lcom/tappx/a/p3$d;->e:Lcom/tappx/a/p3$d;

    return-object p1

    :cond_28
    const-string p2, "bottom-left"

    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_33

    .line 247
    sget-object p1, Lcom/tappx/a/p3$d;->f:Lcom/tappx/a/p3$d;

    return-object p1

    :cond_33
    const-string p2, "bottom-right"

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 249
    sget-object p1, Lcom/tappx/a/p3$d;->h:Lcom/tappx/a/p3$d;

    return-object p1

    :cond_3e
    const-string p2, "top-center"

    .line 250
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 251
    sget-object p1, Lcom/tappx/a/p3$d;->c:Lcom/tappx/a/p3$d;

    return-object p1

    :cond_49
    const-string p2, "bottom-center"

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 253
    sget-object p1, Lcom/tappx/a/p3$d;->g:Lcom/tappx/a/p3$d;

    return-object p1

    .line 255
    :cond_54
    new-instance p2, Lcom/tappx/a/f4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid position \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 5

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/net/Uri;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_27
    return-object v0
.end method

.method static synthetic a(Lcom/tappx/a/c4;Lcom/tappx/a/h4;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/h4;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tappx/a/h4;)V
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Lcom/tappx/a/h4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tappx/a/h4;Ljava/lang/String;)V
    .registers 5

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.notifyErrorEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Lcom/tappx/a/h4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/c4;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/c4;->f:Z

    return p1
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 3

    if-nez p1, :cond_3

    return p2

    .line 257
    :cond_3
    invoke-direct {p0, p1}, Lcom/tappx/a/c4;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private b(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 4

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/tappx/a/c4;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/c4;->f()V

    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "true"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const-string v0, "false"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_14
    new-instance v0, Lcom/tappx/a/f4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(Ljava/lang/String;)Lcom/tappx/a/l4;
    .registers 5

    const-string v0, "portrait"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9
    sget-object p1, Lcom/tappx/a/l4;->b:Lcom/tappx/a/l4;

    return-object p1

    :cond_b
    const-string v0, "landscape"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 11
    sget-object p1, Lcom/tappx/a/l4;->c:Lcom/tappx/a/l4;

    return-object p1

    :cond_16
    const-string v0, "none"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13
    sget-object p1, Lcom/tappx/a/l4;->d:Lcom/tappx/a/l4;

    return-object p1

    .line 15
    :cond_21
    new-instance v0, Lcom/tappx/a/f4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/c4;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tappx/a/c4;->g:Z

    .line 6
    iget-object v0, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    if-eqz v0, :cond_f

    .line 7
    invoke-interface {v0}, Lcom/tappx/a/c4$h;->c()V

    :cond_f
    return-void
.end method

.method private g(Ljava/lang/String;)I
    .registers 5

    const/16 v0, 0xa

    .line 1
    :try_start_2
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_7

    return p1

    .line 3
    :catch_7
    new-instance v0, Lcom/tappx/a/f4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    return-void
.end method

.method a(Lcom/tappx/a/b4;)V
    .registers 4

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setPlacementType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p1}, Lcom/tappx/a/b4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p0, p1}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/tappx/a/c4$h;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    return-void
.end method

.method a(Lcom/tappx/a/h4;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/h4;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/tappx/a/c4;->a:Lcom/tappx/a/b4;

    invoke-virtual {p1, v0}, Lcom/tappx/a/h4;->a(Lcom/tappx/a/b4;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/tappx/a/c4;->f:Z

    if-eqz v0, :cond_d

    goto :goto_15

    .line 139
    :cond_d
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Click required"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    if-eqz v0, :cond_15d

    .line 146
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    if-eqz v0, :cond_155

    .line 150
    sget-object v0, Lcom/tappx/a/c4$g;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "uri"

    const-string v2, "shouldUseCustomClose"

    const-string v3, "url"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_166

    goto/16 :goto_154

    .line 207
    :pswitch_31
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Unspecified command"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :pswitch_39
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/tappx/a/m4;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcom/tappx/a/c4;->b:Lcom/tappx/a/k4;

    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/tappx/a/k4;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_154

    .line 210
    :pswitch_54
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/tappx/a/m4;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 211
    iget-object v0, p0, Lcom/tappx/a/c4;->b:Lcom/tappx/a/k4;

    iget-object v1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/tappx/a/c4$f;

    invoke-direct {v2, p0, p1}, Lcom/tappx/a/c4$f;-><init>(Lcom/tappx/a/c4;Lcom/tappx/a/h4;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/tappx/a/k4;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/k4$c;)V

    goto/16 :goto_154

    .line 212
    :pswitch_74
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/tappx/a/m4;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 213
    iget-object p2, p0, Lcom/tappx/a/c4;->b:Lcom/tappx/a/k4;

    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/tappx/a/k4;->a(Landroid/content/Context;Ljava/net/URI;)V

    .line 214
    iget-object p2, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    invoke-interface {p2, p1}, Lcom/tappx/a/c4$h;->a(Ljava/net/URI;)V

    goto/16 :goto_154

    .line 215
    :pswitch_90
    iget-object p1, p0, Lcom/tappx/a/c4;->b:Lcom/tappx/a/k4;

    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/tappx/a/k4;->a(Landroid/content/Context;Ljava/util/Map;)V

    goto/16 :goto_154

    :pswitch_9d
    const-string p1, "allowOrientationChange"

    .line 216
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tappx/a/c4;->e(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "forceOrientation"

    .line 217
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/tappx/a/c4;->f(Ljava/lang/String;)Lcom/tappx/a/l4;

    move-result-object p2

    .line 219
    iget-object v0, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    invoke-interface {v0, p1, p2}, Lcom/tappx/a/c4$h;->a(ZLcom/tappx/a/l4;)V

    goto/16 :goto_154

    .line 220
    :pswitch_bc
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/tappx/a/c4;->a(Ljava/lang/String;Z)Z

    move-result p1

    .line 221
    iget-object p2, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    invoke-interface {p2, p1}, Lcom/tappx/a/c4$h;->a(Z)V

    goto/16 :goto_154

    .line 222
    :pswitch_cd
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tappx/a/m4;->a(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 223
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/tappx/a/c4;->a(Ljava/lang/String;Z)Z

    move-result p2

    .line 225
    iget-object v0, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    invoke-interface {v0, p1, p2}, Lcom/tappx/a/c4$h;->a(Ljava/net/URI;Z)V

    goto :goto_154

    :pswitch_e8
    const-string p1, "width"

    .line 226
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tappx/a/c4;->g(Ljava/lang/String;)I

    move-result p1

    const v0, 0x186a0

    invoke-direct {p0, p1, v4, v0}, Lcom/tappx/a/c4;->a(III)I

    move-result v6

    const-string p1, "height"

    .line 227
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tappx/a/c4;->g(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v4, v0}, Lcom/tappx/a/c4;->a(III)I

    move-result v7

    const-string p1, "offsetX"

    .line 228
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tappx/a/c4;->g(Ljava/lang/String;)I

    move-result p1

    const v1, -0x186a0

    invoke-direct {p0, p1, v1, v0}, Lcom/tappx/a/c4;->a(III)I

    move-result v8

    const-string p1, "offsetY"

    .line 229
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tappx/a/c4;->g(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v1, v0}, Lcom/tappx/a/c4;->a(III)I

    move-result v9

    const-string p1, "customClosePosition"

    .line 230
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/tappx/a/p3$d;->d:Lcom/tappx/a/p3$d;

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/c4;->a(Ljava/lang/String;Lcom/tappx/a/p3$d;)Lcom/tappx/a/p3$d;

    move-result-object v10

    const-string p1, "allowOffscreen"

    .line 231
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/tappx/a/c4;->a(Ljava/lang/String;Z)Z

    move-result v11

    .line 232
    iget-object v5, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    invoke-interface/range {v5 .. v11}, Lcom/tappx/a/c4$h;->a(IIIILcom/tappx/a/p3$d;Z)V

    goto :goto_154

    .line 233
    :pswitch_14f
    iget-object p1, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    invoke-interface {p1}, Lcom/tappx/a/c4$h;->a()V

    :goto_154
    return-void

    .line 234
    :cond_155
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Destroyed"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_15d
    new-instance p1, Lcom/tappx/a/f4;

    const-string p2, "Invalid state"

    invoke-direct {p1, p2}, Lcom/tappx/a/f4;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_14f
        :pswitch_e8
        :pswitch_cd
        :pswitch_bc
        :pswitch_9d
        :pswitch_90
        :pswitch_74
        :pswitch_54
        :pswitch_39
        :pswitch_31
    .end packed-switch
.end method

.method public a(Lcom/tappx/a/n4;)V
    .registers 5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setScreenSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Lcom/tappx/a/n4;->g()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tappx/a/c4;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setMaxSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p1}, Lcom/tappx/a/n4;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tappx/a/c4;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p1}, Lcom/tappx/a/n4;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tappx/a/c4;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p1}, Lcom/tappx/a/n4;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tappx/a/c4;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraidbridge.notifySizeChangeEvent("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Lcom/tappx/a/n4;->a()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tappx/a/c4;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-virtual {p0, p1}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/tappx/a/q4;)V
    .registers 5

    .line 5
    iput-object p1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    .line 6
    new-instance v0, Lcom/tappx/a/g4;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tappx/a/g4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/c4;->e:Lcom/tappx/a/g4;

    .line 7
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2f

    .line 10
    iget-object v0, p0, Lcom/tappx/a/c4;->a:Lcom/tappx/a/b4;

    sget-object v2, Lcom/tappx/a/b4;->b:Lcom/tappx/a/b4;

    if-eq v0, v2, :cond_28

    sget-boolean v0, Lcom/tappx/a/o;->b:Z

    if-eqz v0, :cond_2f

    .line 11
    :cond_28
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 14
    :cond_2f
    iget-object v0, p0, Lcom/tappx/a/c4;->e:Lcom/tappx/a/g4;

    invoke-virtual {v0, p1}, Lcom/tappx/a/g4;->a(Landroid/webkit/WebView;)V

    .line 15
    iget-object p1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 16
    iget-object p1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 17
    iget-object p1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 18
    iget-object p1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 20
    iget-object p1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    iget-object v0, p0, Lcom/tappx/a/c4;->h:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 22
    iget-object p1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    new-instance v0, Lcom/tappx/a/c4$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/c4$a;-><init>(Lcom/tappx/a/c4;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 46
    new-instance p1, Lcom/tappx/a/o3;

    invoke-direct {p1}, Lcom/tappx/a/o3;-><init>()V

    .line 48
    new-instance v0, Lcom/tappx/a/c4$b;

    invoke-direct {v0, p0}, Lcom/tappx/a/c4$b;-><init>(Lcom/tappx/a/c4;)V

    invoke-virtual {p1, v0}, Lcom/tappx/a/o3;->a(Lcom/tappx/a/o3$a;)V

    .line 56
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    new-instance v1, Lcom/tappx/a/c4$c;

    invoke-direct {v1, p0, p1}, Lcom/tappx/a/c4$c;-><init>(Lcom/tappx/a/c4;Lcom/tappx/a/o3;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    iget-object p1, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    new-instance v0, Lcom/tappx/a/c4$d;

    invoke-direct {v0, p0}, Lcom/tappx/a/c4$d;-><init>(Lcom/tappx/a/c4;)V

    invoke-virtual {p1, v0}, Lcom/tappx/a/l3;->setVisibilityChangedListener(Lcom/tappx/a/l3$a;)V

    return-void
.end method

.method a(Lcom/tappx/a/v4;)V
    .registers 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p1}, Lcom/tappx/a/v4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    return-void
.end method

.method a(Z)V
    .registers 4

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setIsViewable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    return-void
.end method

.method a(ZZZZZ)V
    .registers 8

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setSupports("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    .line 82
    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_94

    .line 89
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tappx"

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string p1, "loadFailed"

    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 96
    iget-object p1, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    invoke-interface {p1}, Lcom/tappx/a/c4$h;->b()V

    :cond_27
    return v0

    :cond_28
    const-string v4, "mraid"

    .line 101
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 102
    invoke-static {v3}, Lcom/tappx/a/h4;->a(Ljava/lang/String;)Lcom/tappx/a/h4;

    move-result-object p1

    .line 104
    :try_start_34
    invoke-direct {p0, v1}, Lcom/tappx/a/c4;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/h4;Ljava/util/Map;)V
    :try_end_3b
    .catch Lcom/tappx/a/f4; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/h4;Ljava/lang/String;)V

    .line 108
    :goto_44
    invoke-direct {p0, p1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/h4;)V

    return v0

    .line 115
    :cond_48
    iget-boolean v1, p0, Lcom/tappx/a/c4;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_93

    .line 116
    iput-boolean v2, p0, Lcom/tappx/a/c4;->f:Z

    .line 117
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 118
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 120
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 121
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    :try_start_65
    iget-object v3, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    if-nez v3, :cond_6f

    const-string v1, "WebView was detached. Unable to load a URL"

    .line 125
    invoke-static {v1}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    return v0

    .line 128
    :cond_6f
    iget-object v3, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    iget-object v1, p0, Lcom/tappx/a/c4;->c:Lcom/tappx/a/c4$h;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/tappx/a/c4$h;->a(Ljava/net/URI;)V
    :try_end_7e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_65 .. :try_end_7e} :catch_7f

    return v0

    .line 132
    :catch_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity found to handle this URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    :cond_93
    return v2

    .line 133
    :catch_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MRAID URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tappx/a/j4;->d(Ljava/lang/String;)V

    .line 134
    sget-object p1, Lcom/tappx/a/h4;->k:Lcom/tappx/a/h4;

    const-string v1, "Mraid command sent an invalid URL"

    invoke-direct {p0, p1, v1}, Lcom/tappx/a/c4;->a(Lcom/tappx/a/h4;Ljava/lang/String;)V

    return v0
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    if-nez v0, :cond_19

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView:\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/j4;->c(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method b()Z
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    if-nez v0, :cond_a

    const-string p1, "MRAID bridge called setContentHtml before WebView was attached"

    .line 2
    invoke-static {p1}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_a
    iget-object v0, p0, Lcom/tappx/a/c4;->e:Lcom/tappx/a/g4;

    if-eqz v0, :cond_12

    .line 6
    invoke-virtual {v0, p1}, Lcom/tappx/a/g4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_12
    move-object v2, p1

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/tappx/a/c4;->g:Z

    .line 10
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method c()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/tappx/a/c4;->g:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    if-nez v0, :cond_a

    const-string p1, "MRAID bridge called setContentHtml while WebView was not attached"

    .line 2
    invoke-static {p1}, Lcom/tappx/a/j4;->a(Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/tappx/a/c4;->g:Z

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method d()Z
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/tappx/a/c4;->d:Lcom/tappx/a/q4;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tappx/a/l3;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method e()V
    .registers 2

    const-string v0, "mraidbridge.notifyReadyEvent();"

    .line 7
    invoke-virtual {p0, v0}, Lcom/tappx/a/c4;->b(Ljava/lang/String;)V

    return-void
.end method
