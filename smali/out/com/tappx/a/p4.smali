.class public Lcom/tappx/a/p4;
.super Lcom/tappx/a/n3;
.source "SourceFile"


# instance fields
.field private final e:Landroid/widget/VideoView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/tappx/a/n3$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/tappx/a/n3;-><init>(Landroid/content/Context;Lcom/tappx/a/n3$a;)V

    .line 3
    new-instance p3, Landroid/widget/VideoView;

    invoke-direct {p3, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tappx/a/p4;->e:Landroid/widget/VideoView;

    .line 4
    new-instance p1, Lcom/tappx/a/p4$a;

    invoke-direct {p1, p0}, Lcom/tappx/a/p4$a;-><init>(Lcom/tappx/a/p4;)V

    invoke-virtual {p3, p1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 12
    iget-object p1, p0, Lcom/tappx/a/p4;->e:Landroid/widget/VideoView;

    new-instance p3, Lcom/tappx/a/p4$b;

    invoke-direct {p3, p0}, Lcom/tappx/a/p4$b;-><init>(Lcom/tappx/a/p4;)V

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 22
    iget-object p1, p0, Lcom/tappx/a/p4;->e:Landroid/widget/VideoView;

    const-string p3, "video_url"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/p4;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/p4;->f:Landroid/view/View;

    return-object p0
.end method

.method private k()V
    .registers 9

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tappx/a/n3;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/p4;->f:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lcom/tappx/a/n3;->c()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1, v0}, Lcom/tappx/a/q3;->b(FLandroid/content/Context;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/tappx/a/n3;->c()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2, v1}, Lcom/tappx/a/q3;->b(FLandroid/content/Context;)I

    move-result v1

    .line 4
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, -0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 5
    sget-object v5, Lcom/tappx/a/e4;->c:Lcom/tappx/a/e4;

    invoke-virtual {p0}, Lcom/tappx/a/n3;->c()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tappx/a/e4;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v6

    .line 6
    sget-object v4, Lcom/tappx/a/e4;->e:Lcom/tappx/a/e4;

    invoke-virtual {p0}, Lcom/tappx/a/n3;->c()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tappx/a/e4;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v3, p0, Lcom/tappx/a/p4;->f:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v2, p0, Lcom/tappx/a/p4;->f:Landroid/view/View;

    new-instance v3, Lcom/tappx/a/p4$c;

    invoke-direct {v3, p0}, Lcom/tappx/a/p4$c;-><init>(Lcom/tappx/a/p4;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17
    invoke-virtual {p0}, Lcom/tappx/a/n3;->d()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/p4;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected e()Landroid/widget/VideoView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/p4;->e:Landroid/widget/VideoView;

    return-object v0
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/tappx/a/n3;->g()V

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/p4;->k()V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/p4;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/tappx/a/p4;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public j()V
    .registers 1

    return-void
.end method
