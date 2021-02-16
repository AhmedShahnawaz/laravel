<?php

namespace App\Http\Controllers;

use App\AboutPage;
use App\Blog;
use App\Client;
use App\Contact;
use App\ContactPage;
use App\HomePage;
use App\Service;
use App\Setting;
use App\Team;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;

class Pages extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        $settings = Setting::first();
        $services = Service::all();
        $service = Service::limit(4)->get();
        $servicefooter = Service::limit(4)->get();
        $home = HomePage::first();
        $clients = Client::all();
        $blogs = Blog::latest()->take(3)->get();
        // return $blogs;
        return view('pages.index', compact('settings', 'services', 'service', 'servicefooter', 'home', 'clients', 'blogs'));
    }
    /**
     * about
     *
     * @return void
     */
    public function about()
    {
        $settings = Setting::first();
        $services = Service::all();
        $servicefooter = Service::limit(4)->get();
        $about = AboutPage::first();
        $teams = Team::all();
        // return $about;
        return view('pages.about', compact('settings', 'services', 'servicefooter', 'about', 'teams'));
    }

    /**
     * contact
     *
     * @return void
     */
    public function contact()
    {
        $settings = Setting::first();
        $services = Service::all();
        $servicefooter = Service::limit(4)->get();
        $contact = ContactPage::first();
        // return $contact;
        return view('pages.contact', compact('settings', 'services', 'servicefooter', 'contact'));
    }
    public function contacfrom(Request $request)
    {

        $request->validate([
            'name'             => 'required|min:2|string',
            'email'         => 'required|email',
            'phone'   => 'required|digits:10',
            'comment'         => 'required|min:5|string',
        ]);

        Contact::create($request->input());

        // return $contact;
        return redirect()->back();
    }

    /**
     * blog
     *
     * @return void
     */
    public function blog()
    {
        $settings = Setting::first();
        $services = Service::all();
        $blogs = Blog::paginate(4);
        $servicefooter = Service::limit(4)->get();
        $resentblog = Blog::latest()->take(4)->get();
        return view('pages.blog', compact('settings', 'services', 'servicefooter', 'blogs', 'resentblog'));
    }
    /**
     * blogpost
     *
     * @return void
     */
    public function blogpost($id)
    {
        $settings = Setting::first();
        $services = Service::all();
        $servicefooter = Service::limit(4)->get();
        $blogs = Blog::latest()->take(3)->get();
        $blog = Blog::find($id);
        return view('pages.blogcontent', compact('settings', 'services', 'servicefooter', 'blogs', 'blog'));
    }

    /**
     * service
     *
     * @return void
     */
    public function service()
    {
        $settings = Setting::first();
        $servicefooter = Service::limit(4)->get();
        $services = Service::all();
        return view('pages.services', compact('settings', 'servicefooter', 'services'));
    }
    /**
     * singleservice
     *
     * @return void
     */
    public function singleservice($id)
    {
        $settings = Setting::first();
        $servicefooter = Service::limit(4)->get();
        $services = Service::all();
        $service = Service::find($id);
        return view('pages.singleservice', compact('settings', 'services', 'servicefooter', 'service'));
    }
}
