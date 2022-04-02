.class Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppFocusRunnable"
.end annotation


# instance fields
.field private backgrounded:Z

.field private completed:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V
    .registers 2

    .line 255
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .registers 1

    .line 255
    iget-boolean p0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p0
.end method

.method static synthetic access$202(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z
    .registers 2

    .line 255
    iput-boolean p1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .registers 1

    .line 255
    iget-boolean p0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return p0
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 259
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    .line 263
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppLostFocus()V

    .line 264
    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return-void
.end method
