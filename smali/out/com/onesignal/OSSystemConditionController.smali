.class Lcom/onesignal/OSSystemConditionController;
.super Ljava/lang/Object;
.source "OSSystemConditionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final systemConditionObserver:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/onesignal/OSSystemConditionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OSSystemConditionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/onesignal/OSSystemConditionController;->systemConditionObserver:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/OSSystemConditionController;)Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/onesignal/OSSystemConditionController;->systemConditionObserver:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    return-object p0
.end method


# virtual methods
.method isDialogFragmentShowing(Landroid/content/Context;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .line 52
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 53
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/onesignal/OSSystemConditionController$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OSSystemConditionController$1;-><init>(Lcom/onesignal/OSSystemConditionController;Landroidx/fragment/app/FragmentManager;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 66
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    sub-int/2addr v0, v2

    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_30

    instance-of p1, p1, Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_30

    const/4 v1, 0x1

    :cond_30
    return v1
.end method

.method systemConditionsAvailable()Z
    .registers 5

    .line 28
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 29
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OSSystemConditionObserver curActivity null"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return v1

    .line 34
    :cond_d
    :try_start_d
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/onesignal/OSSystemConditionController;->isDialogFragmentShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 35
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OSSystemConditionObserver dialog fragment detected"

    invoke-static {v0, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d .. :try_end_1c} :catch_1d

    return v1

    :catch_1d
    move-exception v0

    .line 39
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppCompatActivity is not used in this app, skipping \'isDialogFragmentShowing\' check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 42
    :cond_34
    new-instance v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->isKeyboardUp(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 44
    sget-object v1, Lcom/onesignal/OSSystemConditionController;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/onesignal/OSSystemConditionController;->systemConditionObserver:Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;

    invoke-static {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler;->setSystemConditionObserver(Ljava/lang/String;Lcom/onesignal/OSSystemConditionController$OSSystemConditionObserver;)V

    .line 45
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "OSSystemConditionObserver keyboard up detected"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_4f
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
