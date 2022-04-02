.class final Lcom/appnext/core/webview/AppnextWebView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/core/webview/AppnextWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public aQ:Ljava/lang/String;

.field public hF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/webview/AppnextWebView$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic iq:Lcom/appnext/core/webview/AppnextWebView;

.field public is:Ljava/lang/String;

.field public state:I


# direct methods
.method private constructor <init>(Lcom/appnext/core/webview/AppnextWebView;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/appnext/core/webview/AppnextWebView$b;->iq:Lcom/appnext/core/webview/AppnextWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/appnext/core/webview/AppnextWebView$b;->state:I

    const-string p1, ""

    .line 50
    iput-object p1, p0, Lcom/appnext/core/webview/AppnextWebView$b;->is:Ljava/lang/String;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/appnext/core/webview/AppnextWebView$b;->hF:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appnext/core/webview/AppnextWebView;Lcom/appnext/core/webview/AppnextWebView$1;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Lcom/appnext/core/webview/AppnextWebView$b;-><init>(Lcom/appnext/core/webview/AppnextWebView;)V

    return-void
.end method
