.class Lcom/onesignal/ActivityLifecycleHandler;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;,
        Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;,
        Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;,
        Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
    }
.end annotation


# static fields
.field static curActivity:Landroid/app/Activity;

.field static focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

.field static nextResumeIsFirstActivity:Z

.field private static sActivityAvailableListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sKeyboardListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemConditionObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-direct {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    return-void
.end method

.method private static handleFocus()V
    .registers 1

    .line 210
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->hasBackgrounded()Z

    move-result v0

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    if-eqz v0, :cond_d

    goto :goto_13

    .line 215
    :cond_d
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->stopScheduledRunnable()V

    goto :goto_1e

    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 211
    sput-boolean v0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    .line 212
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->resetBackgroundState()V

    .line 213
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppFocus()V

    :goto_1e
    return-void
.end method

.method private static handleLostFocus()V
    .registers 3

    .line 206
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    new-instance v1, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->runRunnable(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)V

    return-void
.end method

.method private static logCurActivity()V
    .registers 4

    .line 167
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curActivity is NOW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    :cond_36
    const-string v2, "null"

    :goto_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method private static logOrientationChange(I)V
    .registers 5

    const-string v0, ")"

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1f

    .line 173
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration Orientation Change: LANDSCAPE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_3b

    :cond_1f
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3b

    .line 175
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration Orientation Change: PORTRAIT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method static onActivityCreated(Landroid/app/Activity;)V
    .registers 1

    return-void
.end method

.method static onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    .line 155
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 158
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_25

    const/4 p0, 0x0

    .line 159
    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 160
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 163
    :cond_25
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method static onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 131
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x0

    .line 132
    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 133
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 136
    :cond_a
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method static onActivityResumed(Landroid/app/Activity;)V
    .registers 1

    .line 125
    invoke-static {p0}, Lcom/onesignal/ActivityLifecycleHandler;->setCurActivity(Landroid/app/Activity;)V

    .line 126
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    .line 127
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleFocus()V

    return-void
.end method

.method static onActivityStarted(Landroid/app/Activity;)V
    .registers 1

    return-void
.end method

.method static onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 140
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_20

    const/4 v0, 0x0

    .line 143
    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 144
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 147
    :cond_20
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->stopped(Ljava/lang/ref/WeakReference;)V

    goto :goto_2a

    .line 151
    :cond_45
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 112
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_14

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/onesignal/OSUtils;->hasConfigChangeFlag(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 113
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0}, Lcom/onesignal/ActivityLifecycleHandler;->logOrientationChange(I)V

    .line 114
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->onOrientationChanged()V

    :cond_14
    return-void
.end method

.method private static onOrientationChanged()V
    .registers 7

    .line 186
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    .line 187
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->stopped(Ljava/lang/ref/WeakReference;)V

    goto :goto_d

    .line 192
    :cond_2a
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    sget-object v2, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    goto :goto_34

    .line 196
    :cond_4c
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 198
    new-instance v3, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 199
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 200
    sget-object v4, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 202
    :cond_8f
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleFocus()V

    return-void
.end method

.method static removeActivityAvailableListener(Ljava/lang/String;)V
    .registers 2

    .line 86
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static removeSystemConditionObserver(Ljava/lang/String;)V
    .registers 2

    .line 81
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static setActivityAvailableListener(Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V
    .registers 3

    .line 75
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz p0, :cond_c

    .line 77
    invoke-virtual {p1, p0}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    :cond_c
    return-void
.end method

.method private static setCurActivity(Landroid/app/Activity;)V
    .registers 7

    .line 90
    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    .line 91
    sget-object p0, Lcom/onesignal/ActivityLifecycleHandler;->sActivityAvailableListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    goto :goto_c

    .line 96
    :cond_24
    :try_start_24
    sget-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    .line 97
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    new-instance v2, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 99
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_66} :catch_67

    goto :goto_3c

    :catch_67
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_6b
    return-void
.end method

.method static setSystemConditionObserver(Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V
    .registers 5

    .line 65
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1e

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/onesignal/ActivityLifecycleHandler$KeyboardListener;-><init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$1;)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 69
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sKeyboardListeners:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1e
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->sSystemConditionObservers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
