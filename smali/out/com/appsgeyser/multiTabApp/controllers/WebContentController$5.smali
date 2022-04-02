.class synthetic Lcom/appsgeyser/multiTabApp/controllers/WebContentController$5;
.super Ljava/lang/Object;
.source "WebContentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 81
    invoke-static {}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->values()[Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$5;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    :try_start_9
    sget-object v1, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/appsgeyser/multiTabApp/controllers/WebContentController$5;->$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType:[I

    sget-object v1, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
