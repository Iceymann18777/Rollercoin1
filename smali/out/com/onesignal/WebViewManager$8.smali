.class synthetic Lcom/onesignal/WebViewManager$8;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/WebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$onesignal$WebViewManager$Position:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    invoke-static {}, Lcom/onesignal/WebViewManager$Position;->values()[Lcom/onesignal/WebViewManager$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/onesignal/WebViewManager$8;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    :try_start_9
    sget-object v1, Lcom/onesignal/WebViewManager$Position;->TOP_BANNER:Lcom/onesignal/WebViewManager$Position;

    invoke-virtual {v1}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/onesignal/WebViewManager$8;->$SwitchMap$com$onesignal$WebViewManager$Position:[I

    sget-object v1, Lcom/onesignal/WebViewManager$Position;->BOTTOM_BANNER:Lcom/onesignal/WebViewManager$Position;

    invoke-virtual {v1}, Lcom/onesignal/WebViewManager$Position;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
