.class public Lcom/tappx/a/g2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static volatile a:Lcom/tappx/a/g2$c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tappx/a/g2$c;
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/g2$c;->a:Lcom/tappx/a/g2$c;

    if-nez v0, :cond_15

    .line 3
    const-class v1, Lcom/tappx/a/g2$c;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lcom/tappx/a/g2$c;->a:Lcom/tappx/a/g2$c;

    if-nez v0, :cond_10

    .line 6
    new-instance v0, Lcom/tappx/a/g2$c;

    invoke-direct {v0}, Lcom/tappx/a/g2$c;-><init>()V

    .line 8
    :cond_10
    monitor-exit v1

    goto :goto_15

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :goto_15
    return-object v0
.end method


# virtual methods
.method public a(Lcom/tappx/sdk/android/TappxBanner;)Lcom/tappx/a/g2;
    .registers 3

    .line 9
    new-instance v0, Lcom/tappx/a/g2;

    invoke-direct {v0, p1}, Lcom/tappx/a/g2;-><init>(Lcom/tappx/sdk/android/TappxBanner;)V

    return-object v0
.end method
