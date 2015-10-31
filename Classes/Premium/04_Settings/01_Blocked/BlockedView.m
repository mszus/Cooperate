//
// Copyright (c) 2015 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "utilities.h"

#import "BlockedView.h"

//-------------------------------------------------------------------------------------------------------------------------------------------------
@interface BlockedView()

@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
//-------------------------------------------------------------------------------------------------------------------------------------------------

@implementation BlockedView

@synthesize webView;

//-------------------------------------------------------------------------------------------------------------------------------------------------
- (void)viewDidLoad
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
    [super viewDidLoad];
    self.title = @"Calculator";
}

//-------------------------------------------------------------------------------------------------------------------------------------------------
- (void)viewWillAppear:(BOOL)animated
//-------------------------------------------------------------------------------------------------------------------------------------------------
{
    [super viewWillAppear:animated];
    //---------------------------------------------------------------------------------------------------------------------------------------------
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:Applications(@"Blocked.html")]]];
}

@end
