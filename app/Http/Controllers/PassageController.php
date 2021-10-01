<?php

namespace App\Http\Controllers;

use App\Models\Passage;
use Illuminate\Http\Request;

class PassageController extends Controller
{
    public function index()
    {
        $passages = Passage::all()->sortBy('id','desc');
        return json_encode($passages);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    public function show()
    {
        $passage = Passage::all()->sortBy('id')->first->get();
        $passage_id = $passage->id;

        $questions = $passage->questions;
        $questions_count = $questions->count();
        $questions->load('options');

        return view('welcome', compact(['passage','questions_count','questions']));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Passage  $passage
     * @return \Illuminate\Http\Response
     */
    public function edit(Passage $passage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Passage  $passage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Passage $passage)
    {
        //
    }

    public function mark(Request $request)
    {
        $score = 0;
        $count = $request->get('count');

        for ($i = 0; $i <= $count; $i++){
            if ($request->get('question'.$i) == 1){
                $score += 1;
            }
        }
        return view('result', compact(['score','count']));
    }

    public function destroy(Passage $passage)
    {
        //
    }
}
