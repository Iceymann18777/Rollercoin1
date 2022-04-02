.class Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardListener"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final observer:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;


# direct methods
.method private constructor <init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;)V
    .registers 3

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;->observer:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    .line 275
    iput-object p2, p0, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V
    .registers 4

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 280
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->isKeyboardUp(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 282
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2c

    .line 283
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_29

    .line 285
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2c

    .line 287
    :cond_29
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 290
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->removeSystemConditionObserver(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;->observer:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-interface {v0}, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;->systemConditionChanged()V

    :cond_36
    return-void
.end method
