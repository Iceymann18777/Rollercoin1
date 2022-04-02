.class public final Lcom/b/a/a/a/a/d;
.super Landroid/database/ContentObserver;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/media/AudioManager;

.field private final c:Lcom/b/a/a/a/a/a;

.field private final d:Lcom/b/a/a/a/a/c;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/b/a/a/a/a/a;Lcom/b/a/a/a/a/c;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/b/a/a/a/a/d;->a:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/b/a/a/a/a/d;->b:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/b/a/a/a/a/d;->c:Lcom/b/a/a/a/a/a;

    iput-object p4, p0, Lcom/b/a/a/a/a/d;->d:Lcom/b/a/a/a/a/c;

    return-void
.end method

.method private a(F)Z
    .registers 3

    iget v0, p0, Lcom/b/a/a/a/a/d;->e:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private c()F
    .registers 4

    iget-object v0, p0, Lcom/b/a/a/a/a/d;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/b/a/a/a/a/d;->b:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/a/a/d;->c:Lcom/b/a/a/a/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/a/a/a;->a(II)F

    move-result v0

    return v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/a/d;->d:Lcom/b/a/a/a/a/c;

    iget v1, p0, Lcom/b/a/a/a/a/d;->e:F

    invoke-interface {v0, v1}, Lcom/b/a/a/a/a/c;->a(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-direct {p0}, Lcom/b/a/a/a/a/d;->c()F

    move-result v0

    iput v0, p0, Lcom/b/a/a/a/a/d;->e:F

    invoke-direct {p0}, Lcom/b/a/a/a/a/d;->d()V

    iget-object v0, p0, Lcom/b/a/a/a/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lcom/b/a/a/a/a/d;->c()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/b/a/a/a/a/d;->a(F)Z

    move-result v0

    if-eqz v0, :cond_12

    iput p1, p0, Lcom/b/a/a/a/a/d;->e:F

    invoke-direct {p0}, Lcom/b/a/a/a/a/d;->d()V

    :cond_12
    return-void
.end method
